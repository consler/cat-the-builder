.class public Lcom/badlogic/gdx/graphics/glutils/GLVersion;
.super Ljava/lang/Object;
.source "GLVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private majorVersion:I

.field private minorVersion:I

.field private releaseVersion:I

.field private final rendererString:Ljava/lang/String;

.field private final type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field private final vendorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application$ApplicationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appType"    # Lcom/badlogic/gdx/Application$ApplicationType;
    .param p2, "versionString"    # Ljava/lang/String;
    .param p3, "vendorString"    # Ljava/lang/String;
    .param p4, "rendererString"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "GLVersion"

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_0

    .line 45
    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_0

    .line 46
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne v0, v1, :cond_5

    .line 50
    const-string v0, "OpenGL ES (\\d(\\.\\d){0,2})"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne v0, v1, :cond_6

    .line 53
    const-string v0, "WebGL (\\d(\\.\\d){0,2})"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne v0, v1, :cond_7

    .line 56
    const-string v0, "(\\d(\\.\\d){0,2})"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 59
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 60
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 61
    const-string p3, ""

    .line 62
    const-string p4, ""

    .line 65
    :goto_1
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private extractVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "patternString"    # Ljava/lang/String;
    .param p2, "versionString"    # Ljava/lang/String;

    .line 70
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 71
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 72
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 73
    .local v2, "found":Z
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 74
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "result":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "resultSplit":[Ljava/lang/String;
    aget-object v8, v7, v4

    invoke-direct {p0, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 77
    array-length v8, v7

    if-ge v8, v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    aget-object v5, v7, v5

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v5

    :goto_0
    iput v5, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 78
    array-length v5, v7

    const/4 v8, 0x3

    if-ge v5, v8, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v7, v3

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :goto_1
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 79
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "resultSplit":[Ljava/lang/String;
    goto :goto_2

    .line 80
    :cond_2
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GLVersion"

    invoke-interface {v5, v7, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 82
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 83
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 85
    :goto_2
    return-void
.end method

.method private parseInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "v"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 90
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", assuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LibGDX GL"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return p2
.end method


# virtual methods
.method public getDebugVersionString()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    return v0
.end method

.method public getReleaseVersion()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    return v0
.end method

.method public getRendererString()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object v0
.end method

.method public getVendorString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    return-object v0
.end method

.method public isVersionEqualToOrHigher(II)Z
    .locals 1
    .param p1, "testMajorVersion"    # I
    .param p2, "testMinorVersion"    # I

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    if-gt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    if-lt v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
