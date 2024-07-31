.class Lcom/pdrogfer/mididroid/util/MidiProcessor$1;
.super Ljava/lang/Object;
.source "MidiProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pdrogfer/mididroid/util/MidiProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pdrogfer/mididroid/util/MidiProcessor;


# direct methods
.method constructor <init>(Lcom/pdrogfer/mididroid/util/MidiProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pdrogfer/mididroid/util/MidiProcessor;

    .line 70
    iput-object p1, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$1;->this$0:Lcom/pdrogfer/mididroid/util/MidiProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/MidiProcessor$1;->this$0:Lcom/pdrogfer/mididroid/util/MidiProcessor;

    invoke-static {v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->access$000(Lcom/pdrogfer/mididroid/util/MidiProcessor;)V

    .line 74
    return-void
.end method
