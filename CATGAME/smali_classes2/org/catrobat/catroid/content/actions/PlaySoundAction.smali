.class public final Lorg/catrobat/catroid/content/actions/PlaySoundAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PlaySoundAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/PlaySoundAction;",
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

.field public sprite:Lorg/catrobat/catroid/content/Sprite;


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
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_0

    const-string v1, "sprite"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setSound(Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method protected update(F)V
    .locals 6
    .param p1, "percent"    # F

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const-string v1, "sprite"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sound:Lorg/catrobat/catroid/common/SoundInfo;

    if-eqz v0, :cond_4

    .local v0, "it":Lorg/catrobat/catroid/common/SoundInfo;
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-let-PlaySoundAction$update$1":I
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->isMidiFile()Z

    move-result v3

    const-string v4, "it.file"

    if-eqz v3, :cond_2

    .line 39
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v3

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v5, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->playSoundFile(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v3

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/PlaySoundAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/io/SoundManager;->playSoundFile(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 42
    :goto_0
    nop

    .line 43
    nop

    .line 45
    .end local v0    # "it":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v2    # "$i$a$-let-PlaySoundAction$update$1":I
    :cond_4
    return-void
.end method
