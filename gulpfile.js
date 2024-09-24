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

export const compile = () => uswds.compile();
export const watch = () => uswds.watch();
export const updateUswds = () => uswds.updateUswds();
export const copyAll = () => uswds.copyAll();
export default () => watch();
