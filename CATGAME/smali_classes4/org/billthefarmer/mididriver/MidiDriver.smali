.class public Lorg/billthefarmer/mididriver/MidiDriver;
.super Ljava/lang/Object;
.source "MidiDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;
    }
.end annotation


# instance fields
.field private listener:Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "midi"

    .line 149
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native init()Z
.end method

.method private native shutdown()Z
.end method


# virtual methods
.method public native config()[I
.end method

.method public queueEvent([B)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lorg/billthefarmer/mididriver/MidiDriver;->write([B)Z

    return-void
.end method

.method public setOnMidiStartListener(Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/billthefarmer/mididriver/MidiDriver;->listener:Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;

    return-void
.end method

.method public native setVolume(I)Z
.end method

.method public start()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/billthefarmer/mididriver/MidiDriver;->init()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/billthefarmer/mididriver/MidiDriver;->listener:Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0}, Lorg/billthefarmer/mididriver/MidiDriver$OnMidiStartListener;->onMidiStart()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/billthefarmer/mididriver/MidiDriver;->shutdown()Z

    return-void
.end method

.method public native write([B)Z
.end method
