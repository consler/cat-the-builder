.class public final Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "WriteVariableToFileAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0007J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001eH\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
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
        "",
        "delta",
        "",
        "createAndWriteToFile",
        "",
        "createFile",
        "Ljava/io/File;",
        "fileName",
        "",
        "getFileName",
        "showSuccessMessage",
        "writeToFile",
        "file",
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
.field private formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final getFileName()Ljava/lang/String;
    .locals 5

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
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

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final showSuccessMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f120196

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026o_file_success, fileName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v2, "params":Ljava/util/ArrayList;
    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->createAndWriteToFile()V

    .line 52
    return v1

    .line 49
    :cond_1
    :goto_0
    return v1
.end method

.method public final createAndWriteToFile()V
    .locals 4

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-let-WriteVariableToFileAction$createAndWriteToFile$1":I
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "0"

    .line 60
    .local v3, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->writeToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .end local v3    # "content":Ljava/lang/String;
    nop

    .line 58
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-WriteVariableToFileAction$createAndWriteToFile$1":I
    nop

    .line 62
    :cond_2
    return-void
.end method

.method public final createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    move-object v1, v0

    .line 75
    :goto_1
    return-object v1
.end method

.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method

.method public final writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "content"    # Ljava/lang/String;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    nop

    .line 83
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, v1, v0, v1}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/WriteVariableToFileAction;->showSuccessMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not write variable value to storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 88
    return-void
.end method
