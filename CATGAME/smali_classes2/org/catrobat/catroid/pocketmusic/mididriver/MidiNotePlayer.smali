.class public final Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;
.super Ljava/lang/Object;
.source "MidiNotePlayer.java"

# interfaces
.implements Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;


# static fields
.field private static initialized:Z


# instance fields
.field private final midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/billthefarmer/mididriver/MidiDriver;

    invoke-direct {v0}, Lorg/billthefarmer/mididriver/MidiDriver;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;

    .line 37
    invoke-virtual {v0, p0}, Lorg/billthefarmer/mididriver/MidiDriver;->setOnMidiStartListener(Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;)V

    .line 38
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 87
    sget-boolean v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->initialized:Z

    return v0
.end method

.method private sendMidi(II)V
    .locals 3
    .param p1, "midiSignal"    # I
    .param p2, "message"    # I

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 58
    .local v0, "midiMessage":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 59
    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 61
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;

    invoke-virtual {v1, v0}, Lorg/billthefarmer/mididriver/MidiDriver;->write([B)Z

    .line 62
    return-void
.end method


# virtual methods
.method public onMidiStart()V
    .locals 2

    .line 42
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->PROGRAM_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->getSignalByte()B

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getProgram()I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->sendMidi(II)V

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;

    invoke-virtual {v0}, Lorg/billthefarmer/mididriver/MidiDriver;->config()[I

    .line 44
    return-void
.end method

.method public sendMidi(III)V
    .locals 3
    .param p1, "midiSignal"    # I
    .param p2, "note"    # I
    .param p3, "velocity"    # I

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 67
    .local v0, "midiMessage":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 68
    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 69
    int-to-byte v1, p3

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 71
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;

    invoke-virtual {v1, v0}, Lorg/billthefarmer/mididriver/MidiDriver;->write([B)Z

    .line 72
    return-void
.end method

.method public setInstrument(BLorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V
    .locals 2
    .param p1, "channel"    # B
    .param p2, "instrument"    # Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    .line 75
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->PROGRAM_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->getSignalByte()B

    move-result v0

    .line 76
    .local v0, "status":B
    or-int v1, v0, p1

    int-to-byte v0, v1

    .line 77
    invoke-virtual {p2}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getProgram()I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->sendMidi(II)V

    .line 78
    return-void
.end method

.method public setVolume(BI)V
    .locals 2
    .param p1, "channel"    # B
    .param p2, "volume"    # I

    .line 81
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CONTROL_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->getSignalByte()B

    move-result v0

    .line 82
    .local v0, "status":B
    or-int v1, v0, p1

    int-to-byte v0, v1

    .line 83
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CHANNEL_VOLUME:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->getSignalByte()B

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->sendMidi(III)V

    .line 84
    return-void
.end method

.method public start()V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;

    invoke-virtual {v0}, Lorg/billthefarmer/mididriver/MidiDriver;->start()V

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->initialized:Z

    .line 49
    return-void
.end method

.method public stop()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->midiDriver:Lorg/billthefarmer/mididriver/MidiDriver;

    invoke-virtual {v0}, Lorg/billthefarmer/mididriver/MidiDriver;->stop()V

    .line 53
    return-void
.end method
