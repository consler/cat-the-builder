.class public Lorg/catrobat/catroid/content/actions/StopAllSoundsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "StopAllSoundsAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected update(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 34
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/SoundManager;->stopAllSounds()V

    .line 35
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->stopAllSounds()V

    .line 36
    return-void
.end method
