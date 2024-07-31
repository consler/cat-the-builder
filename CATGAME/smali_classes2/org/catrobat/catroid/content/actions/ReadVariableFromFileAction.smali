.class public final Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "ReadVariableFromFileAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0007J\u0008\u0010\"\u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020\u001fH\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020!H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006)"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "deleteFile",
        "",
        "getDeleteFile",
        "()Z",
        "setDeleteFile",
        "(Z)V",
        "formula",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormula",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormula",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "userVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "getUserVariable",
        "()Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "setUserVariable",
        "(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V",
        "act",
        "delta",
        "",
        "getFile",
        "Ljava/io/File;",
        "fileName",
        "",
        "getFileName",
        "readFromFile",
        "file",
        "readVariableFromFile",
        "",
        "writeContentToVariable",
        "content",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private deleteFile:Z

.field private formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final getFileName()Ljava/lang/String;
    .locals 5

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "fileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "\\.\\w+$"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final writeContentToVariable(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->readVariableFromFile(Ljava/lang/String;)V

    .line 49
    return v1

    .line 45
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1
.end method

.method public final getDeleteFile()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->deleteFile:Z

    return v0
.end method

.method public final getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public final readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read variable value from storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "0"

    move-object v0, v1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public final readVariableFromFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/io/File;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-let-ReadVariableFromFileAction$readVariableFromFile$1":I
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "content":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->writeContentToVariable(Ljava/lang/String;)V

    .line 65
    iget-boolean v3, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->deleteFile:Z

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    .end local v2    # "content":Ljava/lang/String;
    :cond_0
    nop

    .line 62
    .end local v0    # "it":Ljava/io/File;
    .end local v1    # "$i$a$-let-ReadVariableFromFileAction$readVariableFromFile$1":I
    nop

    .line 69
    :cond_1
    return-void
.end method

.method public final setDeleteFile(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 41
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->deleteFile:Z

    return-void
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReadVariableFromFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method
