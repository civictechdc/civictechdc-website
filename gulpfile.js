import gulp from "gulp";
import imagemin, {gifsicle, svgo} from "gulp-imagemin";
import sharpResponsive from "gulp-sharp-responsive";
import uswds from "@uswds/compile";
import rev from "gulp-rev";
import revDelete from "gulp-rev-delete-original";


/**
 * USWDS version
 */

uswds.settings.version = 3;


/**
 * Configure USWDS source paths
 */
uswds.paths.src.projectSass = "./sass/custom";

// uswds.paths.src.theme = "./sass/theme";


/**
 * Configure USWDS destination paths
 */
uswds.paths.dist.css = "./assets/css";
uswds.paths.dist.theme = "./sass/theme";
uswds.paths.dist.js = "./assets/js";
uswds.paths.dist.fonts = "./assets/fonts";
uswds.paths.dist.img = "./assets/img";


/**
 * CSS compilation with cache busting
 */


function addHashToCSS() {
  return gulp
    .src("./assets/css/{styles,events,civichackdc}.css") // Process multiple CSS files
    .pipe(rev()) // Add hash to filename
    .pipe(gulp.dest("./assets/css"))
    .pipe(rev.manifest('css-manifest.json')) // Create manifest
    .pipe(gulp.dest('./_data')); // Save manifest to Jekyll data folder
}


/**
 * Image processing tasks
 */
const imageSource = "_images/**/*";
const imageDest = "./assets/images";

// Resizes and optimizes raster images
function resizeImages() {
  return gulp.src("_images/**/*.{jpg,jpeg,png}", {encoding: false}).pipe(sharpResponsive({
    formats: [

      // For each original format, create different sizes
      {
        width: 400,
        rename: {
          suffix: "-400w"
        },
        jpegOptions: {
          quality: 75,
          progressive: true
        },
        withoutEnlargement: true
      }, {
        width: 800,
        rename: {
          suffix: "-800w"
        },
        jpegOptions: {
          quality: 75,
          progressive: true
        },
        withoutEnlargement: true
      }, {
        width: 1200,
        rename: {
          suffix: "-1200w"
        },
        jpegOptions: {
          quality: 80,
          progressive: true
        },
        withoutEnlargement: true
      }, {
        width: 1800,
        rename: {
          suffix: "-1800w"
        },
        jpegOptions: {
          quality: 90,
          progressive: true
        },
        withoutEnlargement: true
      }
    ]
  })).pipe(gulp.dest(imageDest));
}

// Optimizes vector images and GIFs
function optimizeSvgsAndGifs() {
  return gulp.src("_images/**/*.{svg,gif}", {encoding: false}).pipe(imagemin([
    gifsicle(
      {interlaced: true}
    ),
    svgo(
      {
        plugins: [
          {
            name: "removeViewBox",
            active: false
          }, {
            name: "cleanupIDs",
            active: false
          }
        ]
      }
    )
  ], {verbose: true})).pipe(gulp.dest(imageDest));
}

// Copies WebP files without processing
function copyWebpFiles() {
  return gulp.src("_images/**/*.webp", {encoding: false}).pipe(gulp.dest(imageDest));
}

const processImages = gulp.parallel(resizeImages, optimizeSvgsAndGifs, copyWebpFiles);

function watchImages() {
  return gulp.watch(imageSource, processImages);
}


/**
 * Functions exported as gulp tasks
 */

export const compile = gulp.series(processImages, uswds.compile, addHashToCSS);
const watchUsdws = (done) => uswds.watch(done);

export const watch = gulp.parallel(watchUsdws, watchImages);
export const copyAll = (done) => uswds.copyAll(done);
export default gulp.series(compile, watch);
