.class public final Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "WriteEmbroideryToFileAction.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/StageActivity$IntentListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0017J\u001a\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010$\u001a\u00020 H\u0002J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0019H\u0002J\u0010\u0010\'\u001a\u00020 2\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020 H\u0002J\u0010\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u0019H\u0007J\u0008\u0010-\u001a\u00020 H\u0002J\u0008\u0010.\u001a\u00020 H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006/"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "Lorg/catrobat/catroid/stage/StageActivity$IntentListener;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
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
        "act",
        "",
        "delta",
        "",
        "createFile",
        "Ljava/io/File;",
        "fileName",
        "",
        "getFileName",
        "getTargetIntent",
        "Landroid/content/Intent;",
        "onIntentResult",
        "",
        "resultCode",
        "",
        "data",
        "showMessageEmbroideryIsMissing",
        "writeEmbroideryDataToFile",
        "destinationFile",
        "writeEmbroideryDataToUri",
        "uri",
        "Landroid/net/Uri;",
        "writeEmbroideryToFile",
        "writeToFile",
        "file",
        "writeUsingLegacyExternalStorage",
        "writeUsingSystemFilePicker",
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
.field private final context:Landroid/content/Context;

.field private formula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 54
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CatroidApplication.getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    return-void
.end method

.method private final getFileName()Ljava/lang/String;
    .locals 6

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "fileName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ".dst"

    invoke-static {v0, v5, v3, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final showMessageEmbroideryIsMissing()V
    .locals 4

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    const v1, 0x7f1202de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026mbroidery_data_not_found)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v1, "params":Ljava/util/ArrayList;
    nop

    .line 95
    nop

    .line 94
    sget-object v2, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method private final writeEmbroideryDataToFile(Ljava/io/File;)V
    .locals 3
    .param p1, "destinationFile"    # Ljava/io/File;

    .line 145
    new-instance v0, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;

    .line 146
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v1, v1, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    const-string v2, "stageListener.embroideryPatternManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->getEmbroideryStream()Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    move-result-object v1

    .line 145
    invoke-direct {v0, v1}, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;-><init>(Lorg/catrobat/catroid/embroidery/EmbroideryStream;)V

    .line 147
    .local v0, "dstFileGenerator":Lorg/catrobat/catroid/embroidery/DSTFileGenerator;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;->writeToDSTFile(Ljava/io/File;)V

    .line 148
    return-void
.end method

.method private final writeEmbroideryDataToUri(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    const v3, 0x7f120196

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026o_file_success, fileName)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .local v2, "message":Ljava/lang/String;
    nop

    .line 126
    const/4 v3, 0x3

    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v4, "cacheFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 130
    :cond_0
    invoke-direct {p0, v4}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeEmbroideryDataToFile(Ljava/io/File;)V

    .line 131
    invoke-static {v0, p1, v4}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileContentToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v4    # "cacheFile":Ljava/io/File;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v4, "params":Ljava/util/ArrayList;
    :goto_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    nop

    .line 140
    nop

    .line 138
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    .line 139
    nop

    .line 138
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 141
    .end local v4    # "params":Ljava/util/ArrayList;
    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    .line 132
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    const v6, 0x7f1202e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.getString(R.stri\u2026or_embroidery_file_write)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v5

    .line 134
    sget-object v5, Lorg/catrobat/catroid/stage/StageActivity;->TAG:Ljava/lang/String;

    const-string v6, "Writing embroidery data to file failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    nop

    .end local v4    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 142
    :goto_1
    return-void

    .line 136
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, "params":Ljava/util/ArrayList;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    nop

    .line 140
    nop

    .line 138
    sget-object v6, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    .line 139
    nop

    .line 138
    invoke-virtual {v6, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .end local v5    # "params":Ljava/util/ArrayList;
    throw v4

    .line 123
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final writeEmbroideryToFile()V
    .locals 2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeUsingSystemFilePicker()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeUsingLegacyExternalStorage()V

    .line 73
    :goto_0
    nop

    .line 74
    return-void
.end method

.method private final writeUsingLegacyExternalStorage()V
    .locals 6

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "fileName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ".dst"

    invoke-static {v0, v5, v3, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$a$-let-WriteEmbroideryToFileAction$writeUsingLegacyExternalStorage$1":I
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeToFile(Ljava/io/File;)V

    .line 88
    nop

    .line 86
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-WriteEmbroideryToFileAction$writeUsingLegacyExternalStorage$1":I
    nop

    .line 89
    :cond_2
    return-void
.end method

.method private final writeUsingSystemFilePicker()V
    .locals 4

    .line 77
    nop

    .line 78
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;

    move-object v2, p0

    check-cast v2, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    nop

    .line 79
    :goto_0
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->validPatternExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeEmbroideryToFile()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->showMessageEmbroideryIsMissing()V

    .line 64
    :goto_0
    nop

    .line 65
    return v1
.end method

.method public final createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->EXTERNAL_STORAGE_ROOT_EXPORT_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    move-object v1, v0

    .line 101
    :goto_1
    return-object v1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 7

    .line 160
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    const v2, 0x7f120191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.brick_write_embroidery)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "$this$apply":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 163
    .local v4, "$i$a$-apply-WriteEmbroideryToFileAction$getTargetIntent$intent$1":I
    const-string v5, "*/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v6, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    nop

    .line 162
    .end local v3    # "$this$apply":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-WriteEmbroideryToFileAction$getTargetIntent$intent$1":I
    nop

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Intent.createChooser(intent, title)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public onIntentResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 171
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 172
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$a$-let-WriteEmbroideryToFileAction$onIntentResult$1":I
    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeEmbroideryDataToUri(Landroid/net/Uri;)V

    .line 174
    nop

    .line 176
    .end local v0    # "it":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-WriteEmbroideryToFileAction$onIntentResult$1":I
    :cond_0
    return-void
.end method

.method public final setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->formula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final writeToFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f120196

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026le_to_file_success, file)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .local v0, "message":Ljava/lang/String;
    nop

    .line 110
    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->writeEmbroideryDataToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .local v2, "params":Ljava/util/ArrayList;
    :goto_0
    nop

    .line 117
    nop

    .line 116
    nop

    .line 117
    nop

    .line 116
    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 118
    .end local v2    # "params":Ljava/util/ArrayList;
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/WriteEmbroideryToFileAction;->context:Landroid/content/Context;

    const v4, 0x7f1202e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.stri\u2026or_embroidery_file_write)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Writing embroidery data to file failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    nop

    .end local v2    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 119
    :goto_1
    return-void

    .line 115
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .local v3, "params":Ljava/util/ArrayList;
    nop

    .line 117
    nop

    .line 116
    nop

    .line 117
    nop

    .line 116
    sget-object v4, Lorg/catrobat/catroid/stage/StageActivity;->messageHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {v4, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v3    # "params":Ljava/util/ArrayList;
    throw v2
.end method
