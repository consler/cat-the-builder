.class public Lorg/catrobat/catroid/ui/dialogs/StageDialog;
.super Landroid/app/Dialog;
.source "StageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

.field private stageListener:Lorg/catrobat/catroid/stage/StageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageListener;I)V
    .locals 0
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageListener"    # Lorg/catrobat/catroid/stage/StageListener;
    .param p3, "theme"    # I

    .line 63
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 65
    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)Lorg/catrobat/catroid/stage/StageActivity;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/StageDialog;

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    return-object v0
.end method

.method private clearBroadcastMaps()V
    .locals 5

    .line 237
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 238
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 239
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getIdToEventThreadMap()Lcom/google/common/collect/Multimap;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/Multimap;->clear()V

    .line 240
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 241
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_0
    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method private makeScreenshot()V
    .locals 3

    .line 196
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$StageDialog$asFM-a52hQSrSDQ6dVutHGLGFp4;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$StageDialog$asFM-a52hQSrSDQ6dVutHGLGFp4;-><init>(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)V

    const-string v2, "manual_screenshot.png"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/stage/StageListener;->requestTakingScreenshot(Ljava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;)V

    .line 211
    return-void
.end method

.method private resetEmbroideryThreadColor()V
    .locals 5

    .line 245
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 246
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 247
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Sprite;->setEmbroideryThreadColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 248
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 249
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method private restartProject()V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/stage/StageListener;->reloadProject(Lorg/catrobat/catroid/ui/dialogs/StageDialog;)V

    .line 215
    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->TAG:Ljava/lang/String;

    const-string v2, "Thread activated too early!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageResume(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 223
    return-void

    .line 221
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private shareEmbroideryFile()V
    .locals 6

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->validPatternExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v2, v2, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v2}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->getEmbroideryStream()Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;-><init>(Lorg/catrobat/catroid/embroidery/EmbroideryStream;)V

    .line 151
    .local v1, "dstFileGenerator":Lorg/catrobat/catroid/embroidery/DSTFileGenerator;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".dst"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 157
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;->writeToDSTFile(Ljava/io/File;)V

    .line 159
    new-instance v3, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {v3, v4, v2}, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;-><init>(Lorg/catrobat/catroid/stage/StageActivity;Ljava/io/File;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->startActivity()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_1
    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v5, 0x7f1202df

    invoke-static {v4, v5}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 163
    sget-object v4, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->TAG:Ljava/lang/String;

    const-string v5, "Writing to dst file failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "dstFileGenerator":Lorg/catrobat/catroid/embroidery/DSTFileGenerator;
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->dismiss()V

    .line 167
    return-void
.end method

.method private toggleAxes()V
    .locals 3

    .line 226
    const v0, 0x7f0a05d9

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 227
    .local v0, "axesToggleButton":Landroid/widget/Button;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-boolean v1, v1, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    .line 229
    const v1, 0x7f120762

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/catrobat/catroid/stage/StageListener;->axesOn:Z

    .line 232
    const v1, 0x7f120761

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 234
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$makeScreenshot$0$StageDialog(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v1, 0x7f1205d2

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 206
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->changedProject(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v1, 0x7f12030a

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 210
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 139
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->clearBroadcastMaps()V

    .line 140
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->resetEmbroideryThreadColor()V

    .line 141
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageActivity;->exit()V

    .line 143
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;-><init>(Lorg/catrobat/catroid/ui/dialogs/StageDialog;Lorg/catrobat/catroid/ui/dialogs/StageDialog$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/dialogs/StageDialog$FinishThreadAndDisposeTexturesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    sget-object v0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->TAG:Ljava/lang/String;

    const-string v1, "Unimplemented button clicked! This shouldn\'t happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->toggleAxes()V

    .line 121
    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->shareEmbroideryFile()V

    .line 130
    goto :goto_0

    .line 126
    :pswitch_2
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->makeScreenshot()V

    .line 127
    goto :goto_0

    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->onRestartPressed()V

    .line 118
    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageListener;->toggleScreenMode()V

    .line 124
    goto :goto_0

    .line 114
    :pswitch_5
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->onContinuePressed()V

    .line 115
    goto :goto_0

    .line 111
    :pswitch_6
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->onBackPressed()V

    .line 112
    nop

    .line 135
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a05d3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContinuePressed()V
    .locals 6

    .line 170
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->dismiss()V

    .line 176
    sget-wide v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerReferenceValue:D

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerPauseValue:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerReferenceValue:D

    .line 177
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageResume(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f0d0150

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, "width":I
    const/4 v1, -0x2

    .line 80
    .local v1, "height":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f060168

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 84
    const v2, 0x7f0a05d3

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f0a05d4

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f0a05d6

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v2, 0x7f0a05d9

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v2, 0x7f0a05d7

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/StageActivity;->getResizePossible()Z

    move-result v2

    const v3, 0x7f0a05d5

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 94
    :goto_0
    return-void
.end method

.method public onRestartPressed()V
    .locals 3

    .line 181
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/StageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->clearBroadcastMaps()V

    .line 188
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->resetEmbroideryThreadColor()V

    .line 190
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->dismiss()V

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->timerReferenceValue:D

    .line 192
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->restartProject()V

    .line 193
    return-void
.end method

.method public show()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    const v1, 0x7f0a05de

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->embroideryPatternManager:Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;->validPatternExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v0, 0x7f0a05d8

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/StageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_0
    return-void
.end method
