.class public Lcom/badlogic/gdx/utils/GdxBuild;
.super Ljava/lang/Object;
.source "GdxBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    const-string v6, "jni"

    .line 31
    .local v6, "JNI_DIR":Ljava/lang/String;
    const-string v7, "libs"

    .line 34
    .local v7, "LIBS_DIR":Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;

    invoke-direct {v0}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;-><init>()V

    const-string v1, "**/*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "src"

    const-string v2, "bin"

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    const-string v0, "iosgl/**"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "excludeCpp":[Ljava/lang/String;
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v1

    .line 41
    .local v1, "win32home":Lcom/badlogic/gdx/jnigen/BuildTarget;
    const-string v3, ""

    iput-object v3, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->compilerPrefix:Ljava/lang/String;

    .line 42
    const-string v3, "build-windows32home.xml"

    iput-object v3, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->buildFileName:Ljava/lang/String;

    .line 43
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->excludeFromMasterBuildFile:Z

    .line 44
    iput-object v0, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 45
    sget-object v4, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v4, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v4

    .line 46
    .local v4, "win32":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v0, v4, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 47
    sget-object v5, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v5, v3}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v5

    .line 48
    .local v5, "win64":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v0, v5, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 49
    sget-object v8, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v8, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v8

    .line 50
    .local v8, "lin32":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v0, v8, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 51
    sget-object v9, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v9, v3}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v9

    .line 52
    .local v9, "lin64":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v0, v9, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 53
    sget-object v10, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Android:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v10, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v10

    .line 54
    .local v10, "android":Lcom/badlogic/gdx/jnigen/BuildTarget;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " -llog"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    .line 55
    iput-object v0, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 56
    sget-object v11, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v11, v3}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v11

    .line 57
    .local v11, "mac64":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v0, v11, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 58
    sget-object v12, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->IOS:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v12, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v12

    .line 59
    .local v12, "ios":Lcom/badlogic/gdx/jnigen/BuildTarget;
    const-string v13, "iosgl"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/badlogic/gdx/jnigen/BuildTarget;->headerDirs:[Ljava/lang/String;

    .line 60
    new-instance v13, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;

    invoke-direct {v13}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;-><init>()V

    new-instance v14, Lcom/badlogic/gdx/jnigen/BuildConfig;

    const-string v15, "gdx"

    const-string v3, "../target/native"

    invoke-direct {v14, v15, v3, v7, v6}, Lcom/badlogic/gdx/jnigen/BuildConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/badlogic/gdx/jnigen/BuildTarget;

    aput-object v11, v3, v2

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v2, 0x2

    aput-object v4, v3, v2

    const/4 v2, 0x3

    aput-object v5, v3, v2

    const/4 v2, 0x4

    aput-object v8, v3, v2

    const/4 v2, 0x5

    aput-object v9, v3, v2

    const/4 v2, 0x6

    aput-object v10, v3, v2

    const/4 v2, 0x7

    aput-object v12, v3, v2

    invoke-virtual {v13, v14, v3}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;->generate(Lcom/badlogic/gdx/jnigen/BuildConfig;[Lcom/badlogic/gdx/jnigen/BuildTarget;)V

    .line 66
    return-void
.end method
