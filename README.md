# 3D Graphics Engine (Water, Terrain, Skybox, and Shadows)

This project implements a 3D graphics engine using LWJGL (Lightweight Java Game Library) and OpenGL, featuring:

- Dynamic **Terrain** rendering with heightmaps and texture blending
- Realistic **Water** rendering with reflection, refraction, and wave effects
- Immersive **Skybox** rendering with day/night cycle blending
- Shadow mapping for realistic **Shadows**

---

## Included Binaries

The necessary LWJGL native binaries and libraries are already included in the repository. You do **not** need to download or install any additional native dependencies to run the project.

---

## Platform Support

**This project has only been tested on Windows.** Behavior on other operating systems (Linux, macOS) is not guaranteed.

---

## Running the Project in Eclipse

### Prerequisites
- Java Development Kit (JDK) 8 or higher installed
- Eclipse IDE for Java Developers installed

### Steps

1. **Clone the repository** or download the source code to your local machine.

2. **Open Eclipse**, go to `File -> Import -> Existing Projects into Workspace`.

3. **Select the root folder** of the project and click `Finish` to import.

4. **Add LWJGL libraries and natives** if Eclipse doesn't automatically resolve them:
   - The `lib` folder contains the required LWJGL JAR files and native binaries.
   - Add these JARs to your project's build path:
     - Right-click the project -> `Properties -> Java Build Path -> Libraries -> Add JARs...`
     - Select all LWJGL JAR files in the `lib` folder.
   - Eclipse should detect the native libraries automatically, but if not:
     - Edit each LWJGL JAR in the build path, click "Native library location" and set it to the folder containing native DLLs inside `lib`.

5. **Set the working directory** to the project root (optional but recommended for resource loading):
   - Run -> Run Configurations...
   - Select your Java Application run configuration
   - Under the Arguments tab, set the Working Directory to `${workspace_loc:/YourProjectName}`

6. **Run the main class** that starts the application.

---

## Build Folder

The project includes a pre-built `build` folder with runnable JAR files and packaged assets. You can run these directly without rebuilding the source code.

---

## Project Structure Overview

- **entities/** - Classes for game entities like Camera, Light, WaterTile
- **models/** - Model and texture management classes
- **renderEngine/** - Core rendering engine components and loader utilities
- **shaders/** - GLSL shader source files for various effects
- **skybox/** - Skybox rendering and shaders
- **terrains/** - Terrain generation, rendering, and texture packs
- **toolbox/** - Utility math and mouse picking helpers
- **water/** - Water rendering, framebuffers, and shaders
- **textures/** - Texture management

---

## Notes

- The code uses OpenGL 4.0 core profile features.
- Shadow mapping uses 4096x4096 depth textures.
- Water uses framebuffer objects for reflection and refraction rendering.
- Skybox supports smooth blending between day and night textures.
- Terrain supports multiple textures with blend maps for realistic detail.
