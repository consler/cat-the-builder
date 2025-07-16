.class Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;
.super Ljava/lang/Object;
.source "MidiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pdrogfer/mididroid/util/MidiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MidiTrackEventQueue"
.end annotation


# instance fields
.field private mEventsToDispatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

.field private mTrack:Lcom/pdrogfer/mididroid/MidiTrack;

.field final synthetic this$0:Lcom/pdrogfer/mididroid/util/MidiProcessor;


# direct methods
.method public constructor <init>(Lcom/pdrogfer/mididroid/util/MidiProcessor;Lcom/pdrogfer/mididroid/MidiTrack;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->this$0:Lcom/pdrogfer/mididroid/util/MidiProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mTrack:Lcom/pdrogfer/mididroid/MidiTrack;

    .line 341
    invoke-virtual {p2}, Lcom/pdrogfer/mididroid/MidiTrack;->getEvents()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    .line 344
    iget-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getNextEventsUpToTick(D)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/event/MidiEvent;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/event/MidiEvent;->getTick()J

    move-result-wide v0

    long-to-double v0, v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pdrogfer/mididroid/event/MidiEvent;

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

    goto :goto_0

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mEventsToDispatch:Ljava/util/ArrayList;

    return-object p1
.end method

.method public hasMoreEvents()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$MidiTrackEventQueue;->mNext:Lcom/pdrogfer/mididroid/event/MidiEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
