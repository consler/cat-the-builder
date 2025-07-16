.class public Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;
.super Ljava/lang/Object;
.source "MetaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pdrogfer/mididroid/event/meta/MetaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MetaEventData"
.end annotation


# instance fields
.field public final data:[B

.field public final length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->type:I

    .line 140
    new-instance v0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    invoke-direct {v0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->length:Lcom/pdrogfer/mididroid/util/VariableLengthInt;

    .line 141
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/pdrogfer/mididroid/event/meta/MetaEvent$MetaEventData;->data:[B

    .line 142
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->getValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    :cond_0
    return-void
.end method
