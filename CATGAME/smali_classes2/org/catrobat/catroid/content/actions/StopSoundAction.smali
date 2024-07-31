.class public final Lorg/catrobat/catroid/content/actions/StopSoundAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "StopSoundAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/StopSoundAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "sound",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        "getSound",
        "()Lorg/catrobat/catroid/common/SoundInfo;",
        "setSound",
        "(Lorg/catrobat/catroid/common/SoundInfo;)V",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "update",
        "",
        "percent",
        "",
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
.field private sound:Lorg/catrobat/catroid/common/SoundInfo;

.field private sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSound()Lorg/catrobat/catroid/common/SoundInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final setSound(Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/io/File;
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-let-StopSoundAction$update$1":I
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/io/SoundManager;->stopSameSoundInSprite(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 38
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/StopSoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->stopSameSoundInSprite(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 39
    nop

    .line 36
    .end local v0    # "it":Ljava/io/File;
    .end local v1    # "$i$a$-let-StopSoundAction$update$1":I
    :cond_0
    nop

    .line 40
    return-void
.end method
