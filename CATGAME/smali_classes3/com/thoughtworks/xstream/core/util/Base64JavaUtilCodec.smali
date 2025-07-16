.class public Lcom/thoughtworks/xstream/core/util/Base64JavaUtilCodec;
.super Ljava/lang/Object;
.source "Base64JavaUtilCodec.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/StringCodec;


# instance fields
.field private final decoder:Ljava/util/Base64$Decoder;

.field private final encoder:Ljava/util/Base64$Encoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/core/util/Base64JavaUtilCodec;-><init>(Ljava/util/Base64$Encoder;Ljava/util/Base64$Decoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Base64$Encoder;Ljava/util/Base64$Decoder;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/Base64JavaUtilCodec;->encoder:Ljava/util/Base64$Encoder;

    .line 49
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/Base64JavaUtilCodec;->decoder:Ljava/util/Base64$Decoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Base64JavaUtilCodec;->decoder:Ljava/util/Base64$Decoder;

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/Base64JavaUtilCodec;->encoder:Ljava/util/Base64$Encoder;

    invoke-virtual {v0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
