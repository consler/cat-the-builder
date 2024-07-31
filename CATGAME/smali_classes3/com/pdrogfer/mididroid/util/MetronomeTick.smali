.class public Lcom/pdrogfer/mididroid/util/MetronomeTick;
.super Lcom/pdrogfer/mididroid/event/MidiEvent;
.source "MetronomeTick.java"


# instance fields
.field private mCurrentBeat:I

.field private mCurrentMeasure:I

.field private mMetronomeFrequency:I

.field private mMetronomeProgress:D

.field private mResolution:I

.field private mSignature:Lcom/pdrogfer/mididroid/event/meta/TimeSignature;


# direct methods
.method public constructor <init>(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;I)V
    .locals 2
    .param p1, "sig"    # Lcom/pdrogfer/mididroid/event/meta/TimeSignature;
    .param p2, "resolution"    # I

    .line 23
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/pdrogfer/mididroid/event/MidiEvent;-><init>(JJ)V

    .line 25
    iput p2, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mResolution:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->setTimeSignature(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentMeasure:I

    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I
    .locals 1
    .param p1, "o"    # Lcom/pdrogfer/mididroid/event/MidiEvent;

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->compareTo(Lcom/pdrogfer/mididroid/event/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public getBeatNumber()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentBeat:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getEventSize()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasure()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentMeasure:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public setMetronomeFrequency(I)V
    .locals 1
    .param p1, "meter"    # I

    .line 61
    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x60

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mResolution:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeFrequency:I

    goto :goto_0

    .line 70
    :cond_1
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mResolution:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeFrequency:I

    .line 71
    goto :goto_0

    .line 67
    :cond_2
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mResolution:I

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeFrequency:I

    .line 68
    goto :goto_0

    .line 64
    :cond_3
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mResolution:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeFrequency:I

    .line 65
    nop

    .line 76
    :goto_0
    return-void
.end method

.method public setTimeSignature(Lcom/pdrogfer/mididroid/event/meta/TimeSignature;)V
    .locals 1
    .param p1, "sig"    # Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    .line 33
    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mSignature:Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentBeat:I

    .line 36
    invoke-virtual {p1}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->getMeter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->setMetronomeFrequency(I)V

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metronome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentMeasure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/util/MetronomeTick;->getBeatNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(D)Z
    .locals 5
    .param p1, "ticksElapsed"    # D

    .line 41
    iget-wide v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeProgress:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeProgress:D

    .line 43
    iget v2, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeFrequency:I

    int-to-double v3, v2

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_1

    .line 46
    int-to-double v2, v2

    rem-double/2addr v0, v2

    iput-wide v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mMetronomeProgress:D

    .line 48
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentBeat:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mSignature:Lcom/pdrogfer/mididroid/event/meta/TimeSignature;

    invoke-virtual {v2}, Lcom/pdrogfer/mididroid/event/meta/TimeSignature;->getNumerator()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentBeat:I

    .line 49
    if-nez v0, :cond_0

    .line 51
    iget v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentMeasure:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pdrogfer/mididroid/util/MetronomeTick;->mCurrentMeasure:I

    .line 54
    :cond_0
    return v1

    .line 56
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
