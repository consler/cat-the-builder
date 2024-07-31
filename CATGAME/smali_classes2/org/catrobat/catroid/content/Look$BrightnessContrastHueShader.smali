.class Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;
.super Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.source "Look.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/Look;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessContrastHueShader"
.end annotation


# static fields
.field private static final BRIGHTNESS_STRING_IN_SHADER:Ljava/lang/String; = "brightness"

.field private static final CONTRAST_STRING_IN_SHADER:Ljava/lang/String; = "contrast"

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#ifdef GL_ES\n    #define LOWP lowp\n    precision mediump float;\n#else\n    #define LOWP\n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nuniform float brightness;\nuniform float contrast;\nuniform float hue;\nvec3 rgb2hsv(vec3 c)\n{\n    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n    float d = q.x - min(q.w, q.y);\n    float e = 1.0e-10;\n    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c)\n{\n    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\n    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main()\n{\n    vec4 color = v_color * texture2D(u_texture, v_texCoords);\n    color.rgb /= color.a;\n    color.rgb = ((color.rgb - 0.5) * max(contrast, 0.0)) + 0.5;\n    color.rgb += brightness;\n    color.rgb *= color.a;\n    vec3 hsv = rgb2hsv(color.rgb);\n    hsv.x += hue;\n    vec3 rgb = hsv2rgb(hsv);\n    gl_FragColor = vec4(rgb.r, rgb.g, rgb.b, color.a);\n }"

.field private static final HUE_STRING_IN_SHADER:Ljava/lang/String; = "hue"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n v_color = a_color;\n v_texCoords = a_texCoord0;\n gl_Position = u_projTrans * a_position;\n}\n"


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/Look;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/Look;)V
    .locals 2

    .line 731
    iput-object p1, p0, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->this$0:Lorg/catrobat/catroid/content/Look;

    .line 732
    const-string p1, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n v_color = a_color;\n v_texCoords = a_texCoord0;\n gl_Position = u_projTrans * a_position;\n}\n"

    const-string v0, "#ifdef GL_ES\n    #define LOWP lowp\n    precision mediump float;\n#else\n    #define LOWP\n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nuniform float brightness;\nuniform float contrast;\nuniform float hue;\nvec3 rgb2hsv(vec3 c)\n{\n    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n    float d = q.x - min(q.w, q.y);\n    float e = 1.0e-10;\n    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c)\n{\n    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\n    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main()\n{\n    vec4 color = v_color * texture2D(u_texture, v_texCoords);\n    color.rgb /= color.a;\n    color.rgb = ((color.rgb - 0.5) * max(contrast, 0.0)) + 0.5;\n    color.rgb += brightness;\n    color.rgb *= color.a;\n    vec3 hsv = rgb2hsv(color.rgb);\n    hsv.x += hue;\n    vec3 rgb = hsv2rgb(hsv);\n    gl_FragColor = vec4(rgb.r, rgb.g, rgb.b, color.a);\n }"

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const/4 p1, 0x0

    sput-boolean p1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 734
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->isCompiled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->begin()V

    .line 736
    const-string p1, "brightness"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setUniformf(Ljava/lang/String;F)V

    .line 737
    const/high16 p1, 0x3f800000    # 1.0f

    const-string v1, "contrast"

    invoke-virtual {p0, v1, p1}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setUniformf(Ljava/lang/String;F)V

    .line 738
    const-string p1, "hue"

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setUniformf(Ljava/lang/String;F)V

    .line 739
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->end()V

    .line 741
    :cond_0
    return-void
.end method


# virtual methods
.method public setBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .line 744
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->begin()V

    .line 745
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    const-string v1, "brightness"

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setUniformf(Ljava/lang/String;F)V

    .line 746
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->end()V

    .line 747
    return-void
.end method

.method public setHue(F)V
    .locals 1
    .param p1, "hue"    # F

    .line 750
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->begin()V

    .line 751
    const-string v0, "hue"

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->setUniformf(Ljava/lang/String;F)V

    .line 752
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look$BrightnessContrastHueShader;->end()V

    .line 753
    return-void
.end method
