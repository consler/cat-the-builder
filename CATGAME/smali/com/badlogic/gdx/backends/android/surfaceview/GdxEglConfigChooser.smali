.class public Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;
.super Ljava/lang/Object;
.source "GdxEglConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field public static final EGL_COVERAGE_BUFFERS_NV:I = 0x30e0

.field public static final EGL_COVERAGE_SAMPLES_NV:I = 0x30e1

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GdxEglConfigChooser"


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected final mConfigAttribs:[I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mNumSamples:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I
    .param p7, "numSamples"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mValue:[I

    .line 44
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mRedSize:I

    .line 45
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mGreenSize:I

    .line 46
    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mBlueSize:I

    .line 47
    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mAlphaSize:I

    .line 48
    iput p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mDepthSize:I

    .line 49
    iput p6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mStencilSize:I

    .line 50
    iput p7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mNumSamples:I

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mConfigAttribs:[I

    .line 54
    return-void

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 153
    :cond_0
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 36
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 166
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 180
    .local v0, "attributes":[I
    const-string v1, "EGL_BUFFER_SIZE"

    const-string v2, "EGL_ALPHA_SIZE"

    const-string v3, "EGL_BLUE_SIZE"

    const-string v4, "EGL_GREEN_SIZE"

    const-string v5, "EGL_RED_SIZE"

    const-string v6, "EGL_DEPTH_SIZE"

    const-string v7, "EGL_STENCIL_SIZE"

    const-string v8, "EGL_CONFIG_CAVEAT"

    const-string v9, "EGL_CONFIG_ID"

    const-string v10, "EGL_LEVEL"

    const-string v11, "EGL_MAX_PBUFFER_HEIGHT"

    const-string v12, "EGL_MAX_PBUFFER_PIXELS"

    const-string v13, "EGL_MAX_PBUFFER_WIDTH"

    const-string v14, "EGL_NATIVE_RENDERABLE"

    const-string v15, "EGL_NATIVE_VISUAL_ID"

    const-string v16, "EGL_NATIVE_VISUAL_TYPE"

    const-string v17, "EGL_PRESERVED_RESOURCES"

    const-string v18, "EGL_SAMPLES"

    const-string v19, "EGL_SAMPLE_BUFFERS"

    const-string v20, "EGL_SURFACE_TYPE"

    const-string v21, "EGL_TRANSPARENT_TYPE"

    const-string v22, "EGL_TRANSPARENT_RED_VALUE"

    const-string v23, "EGL_TRANSPARENT_GREEN_VALUE"

    const-string v24, "EGL_TRANSPARENT_BLUE_VALUE"

    const-string v25, "EGL_BIND_TO_TEXTURE_RGB"

    const-string v26, "EGL_BIND_TO_TEXTURE_RGBA"

    const-string v27, "EGL_MIN_SWAP_INTERVAL"

    const-string v28, "EGL_MAX_SWAP_INTERVAL"

    const-string v29, "EGL_LUMINANCE_SIZE"

    const-string v30, "EGL_ALPHA_MASK_SIZE"

    const-string v31, "EGL_COLOR_BUFFER_TYPE"

    const-string v32, "EGL_RENDERABLE_TYPE"

    const-string v33, "EGL_CONFORMANT"

    const-string v34, "EGL_COVERAGE_BUFFERS_NV"

    const-string v35, "EGL_COVERAGE_SAMPLES_NV"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 189
    .local v3, "value":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 190
    aget v5, v0, v4

    .line 191
    .local v5, "attribute":I
    aget-object v6, v1, v4

    .line 192
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-interface {v7, v8, v9, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 193
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "  %s: %d\n"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "GdxEglConfigChooser"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 189
    .end local v5    # "attribute":I
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 201
    .end local v4    # "i":I
    return-void

    nop

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
        0x30e0
        0x30e1
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 157
    array-length v0, p3

    .line 158
    .local v0, "numConfigs":I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d configurations"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GdxEglConfigChooser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 160
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "Configuration %d:\n"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    aget-object v5, p3, v2

    invoke-direct {p0, p1, p2, v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 60
    .local v0, "num_config":[I
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mConfigAttribs:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 61
    const/4 v1, 0x0

    aget v7, v0, v1

    .line 63
    .local v7, "numConfigs":I
    if-lez v7, :cond_0

    .line 68
    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 69
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mConfigAttribs:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v8

    move v5, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 75
    invoke-virtual {p0, p1, p2, v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 79
    .local v1, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    return-object v1

    .line 64
    .end local v1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 23
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 83
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    const/4 v0, 0x0

    .line 84
    .local v0, "best":Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v1, 0x0

    .line 85
    .local v1, "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x0

    .line 87
    .local v2, "safe":Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v8, v7

    const/4 v3, 0x0

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    .end local v0    # "best":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v1    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v2    # "safe":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v9, "best":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v10, "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v11, "safe":Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_0
    if-ge v12, v8, :cond_6

    aget-object v13, v7, v12

    .line 88
    .local v13, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 89
    .local v14, "d":I
    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 92
    .local v15, "s":I
    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mDepthSize:I

    if-lt v14, v0, :cond_5

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mStencilSize:I

    if-ge v15, v0, :cond_0

    move/from16 v17, v8

    goto/16 :goto_1

    .line 95
    :cond_0
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 96
    .local v5, "r":I
    const/16 v4, 0x3023

    const/16 v16, 0x0

    move v7, v5

    .end local v5    # "r":I
    .local v7, "r":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 97
    .local v5, "g":I
    const/16 v4, 0x3022

    move/from16 v17, v8

    move v8, v5

    .end local v5    # "g":I
    .local v8, "g":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 98
    .local v5, "b":I
    const/16 v4, 0x3021

    move/from16 v18, v14

    move v14, v5

    .end local v5    # "b":I
    .local v14, "b":I
    .local v18, "d":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 101
    .local v5, "a":I
    if-nez v11, :cond_1

    const/4 v0, 0x5

    if-ne v7, v0, :cond_1

    const/4 v1, 0x6

    if-ne v8, v1, :cond_1

    if-ne v14, v0, :cond_1

    if-nez v5, :cond_1

    .line 102
    move-object v11, v13

    .line 106
    :cond_1
    if-nez v9, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mRedSize:I

    if-ne v7, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mGreenSize:I

    if-ne v8, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mBlueSize:I

    if-ne v14, v0, :cond_2

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mAlphaSize:I

    if-ne v5, v0, :cond_2

    .line 107
    move-object v9, v13

    .line 110
    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mNumSamples:I

    if-nez v0, :cond_2

    .line 111
    goto/16 :goto_2

    .line 116
    :cond_2
    const/16 v4, 0x3032

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v19, v9

    move v9, v5

    .end local v5    # "a":I
    .local v9, "a":I
    .local v19, "best":Ljavax/microedition/khronos/egl/EGLConfig;
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 117
    .local v5, "hasSampleBuffers":I
    const/16 v4, 0x3031

    move-object/from16 v20, v11

    move v11, v5

    .end local v5    # "hasSampleBuffers":I
    .local v11, "hasSampleBuffers":I
    .local v20, "safe":Ljavax/microedition/khronos/egl/EGLConfig;
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 120
    .local v5, "numSamples":I
    const/4 v4, 0x1

    if-nez v10, :cond_3

    if-ne v11, v4, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mNumSamples:I

    if-lt v5, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mRedSize:I

    if-ne v7, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mGreenSize:I

    if-ne v8, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mBlueSize:I

    if-ne v14, v0, :cond_3

    iget v0, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mAlphaSize:I

    if-ne v9, v0, :cond_3

    .line 122
    move-object v0, v13

    .line 123
    .end local v10    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v0, "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v10, v0

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    goto :goto_1

    .line 130
    .end local v0    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_3
    const/16 v16, 0x30e0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v22, v11

    move v11, v4

    .end local v11    # "hasSampleBuffers":I
    .local v22, "hasSampleBuffers":I
    move/from16 v4, v16

    move/from16 v16, v5

    .end local v5    # "numSamples":I
    .local v16, "numSamples":I
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 131
    .end local v22    # "hasSampleBuffers":I
    .local v5, "hasSampleBuffers":I
    const/16 v4, 0x30e1

    move v11, v5

    .end local v5    # "hasSampleBuffers":I
    .restart local v11    # "hasSampleBuffers":I
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 134
    .end local v16    # "numSamples":I
    .local v0, "numSamples":I
    if-nez v10, :cond_4

    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mNumSamples:I

    if-lt v0, v1, :cond_4

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mRedSize:I

    if-ne v7, v1, :cond_4

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mGreenSize:I

    if-ne v8, v1, :cond_4

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mBlueSize:I

    if-ne v14, v1, :cond_4

    iget v1, v6, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;->mAlphaSize:I

    if-ne v9, v1, :cond_4

    .line 136
    move-object v1, v13

    .line 137
    .end local v10    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v1    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v10, v1

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    goto :goto_1

    .line 87
    .end local v0    # "numSamples":I
    .end local v1    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7    # "r":I
    .end local v8    # "g":I
    .end local v9    # "a":I
    .end local v11    # "hasSampleBuffers":I
    .end local v13    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14    # "b":I
    .end local v15    # "s":I
    .end local v18    # "d":I
    .restart local v10    # "bestAA":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_4
    move-object/from16 v9, v19

    move-object/from16 v11, v20

    goto :goto_1

    .line 92
    .end local v19    # "best":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v20    # "safe":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v9, "best":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v11, "safe":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v13    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v14, "d":I
    .restart local v15    # "s":I
    :cond_5
    move/from16 v17, v8

    move/from16 v18, v14

    .line 87
    .end local v13    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14    # "d":I
    .end local v15    # "s":I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v17

    goto/16 :goto_0

    .line 141
    :cond_6
    :goto_2
    if-eqz v10, :cond_7

    .line 142
    return-object v10

    .line 143
    :cond_7
    if-eqz v9, :cond_8

    .line 144
    return-object v9

    .line 146
    :cond_8
    return-object v11
.end method
