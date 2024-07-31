.class Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;
.super Lcom/google/crypto/tink/shaded/protobuf/ByteString$AbstractByteIterator;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/shaded/protobuf/ByteString;->iterator()Lcom/google/crypto/tink/shaded/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 175
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->this$0:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->position:I

    .line 177
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->this$0:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 181
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextByte()B
    .locals 2

    .line 186
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->position:I

    .line 187
    .local v0, "currentPos":I
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_0

    .line 190
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->position:I

    .line 191
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$1;->this$0:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->internalByteAt(I)B

    move-result v1

    return v1

    .line 188
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
