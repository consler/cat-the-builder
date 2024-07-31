.class abstract Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
.super Lcom/google/crypto/tink/shaded/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Lcom/google/crypto/tink/shaded/protobuf/ByteString;II)Z
.end method

.method protected final getTreeDepth()I
    .locals 1

    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .locals 1

    .line 881
    const/4 v0, 0x1

    return v0
.end method

.method writeToReverse(Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;)V
    .locals 0
    .param p1, "byteOutput"    # Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;->writeTo(Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;)V

    .line 887
    return-void
.end method
