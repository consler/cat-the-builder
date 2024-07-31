.class public Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;
.super Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;
.source "PlaySoundAndWaitBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;-><init>()V

    .line 39
    return-void
.end method

.method private getDurationOfSound()F
    .locals 3

    .line 59
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 60
    .local v0, "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 61
    nop

    .line 62
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 63
    .local v1, "duration":F
    return v1
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createPlaySoundAction(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/common/SoundInfo;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 53
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->getDurationOfSound()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Float;)V

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createWaitForSoundAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 55
    return-void

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method protected onViewCreated(Landroid/view/View;)V
    .locals 2
    .param p1, "prototypeView"    # Landroid/view/View;

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;->view:Landroid/view/View;

    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    const v1, 0x7f120102

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method
