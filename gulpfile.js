import { series } from "gulp";
import uswds from "@uswds/compile";

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
 * Functions exported as gulp tasks
 */

export const compile = (done) => uswds.compile(done);
export const watch = (done) => uswds.watch(done);
export const updateUswds = (done) => uswds.updateUswds(done);
export const copyAll = (done) => uswds.copyAll(done);
export default (done) => watch(done);
