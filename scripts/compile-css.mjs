// Local CSS-only compile: runs USWDS Sass compile + manifest hashing without
// the sharp-based image pipeline (sharp's native binary can't be fetched in
// restricted environments). Mirrors the `compile` series in gulpfile.js minus
// processImages. The tracked CI fingerprint is _data/css-manifest.json + the
// unhashed civichackdc.css/events.css, all of which this reproduces.
import gulp from "gulp";
import uswds from "@uswds/compile";
import rev from "gulp-rev";

uswds.settings.version = 3;
uswds.paths.src.projectSass = "./sass/custom";
uswds.paths.dist.css = "./assets/css";
uswds.paths.dist.theme = "./sass/theme";
uswds.paths.dist.js = "./assets/js";
uswds.paths.dist.fonts = "./assets/fonts";
uswds.paths.dist.img = "./assets/img";

function addHashToCSS() {
  return gulp
    .src("./assets/css/{styles,events,civichackdc}.css")
    .pipe(rev())
    .pipe(gulp.dest("./assets/css"))
    .pipe(rev.manifest("css-manifest.json"))
    .pipe(gulp.dest("./_data"));
}

gulp.series(
  uswds.compileSass,
  addHashToCSS,
)((err) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }
  console.log("CSS compiled + manifest written.");
});
