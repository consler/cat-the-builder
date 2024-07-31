.class public final Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCtrHmacAeadKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyOrBuilder;"
    }
.end annotation


# static fields
.field public static final AES_CTR_KEY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

.field public static final HMAC_KEY_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

.field private hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 417
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;-><init>()V

    .line 420
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    sput-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 421
    const-class v1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 423
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;Lcom/google/crypto/tink/proto/AesCtrKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->setAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;Lcom/google/crypto/tink/proto/AesCtrKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->mergeAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->clearAesCtrKey()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;Lcom/google/crypto/tink/proto/HmacKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HmacKey;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->setHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;Lcom/google/crypto/tink/proto/HmacKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HmacKey;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->mergeHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->clearHmacKey()V

    return-void
.end method

.method private clearAesCtrKey()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 90
    return-void
.end method

.method private clearHmacKey()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    .line 136
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->version_:I

    .line 44
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1

    .line 426
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method private mergeAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/AesCtrKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 79
    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesCtrKey;->newBuilder(Lcom/google/crypto/tink/proto/AesCtrKey;)Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKey;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    goto :goto_0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 84
    :goto_0
    return-void
.end method

.method private mergeHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HmacKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/HmacKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    .line 125
    invoke-static {v0}, Lcom/google/crypto/tink/proto/HmacKey;->newBuilder(Lcom/google/crypto/tink/proto/HmacKey;)Lcom/google/crypto/tink/proto/HmacKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/HmacKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacKey$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacKey$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacKey;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    goto :goto_0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    .line 130
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;
    .locals 1

    .line 213
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;",
            ">;"
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/AesCtrKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 69
    return-void
.end method

.method private setHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HmacKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    .line 115
    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->version_:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 407
    :pswitch_0
    return-object v2

    .line 404
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 390
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;>;"
    if-nez v0, :cond_1

    .line 391
    const-class v1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    monitor-enter v1

    .line 392
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 393
    if-nez v0, :cond_0

    .line 394
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 397
    sput-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 399
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 401
    :cond_1
    :goto_0
    return-object v0

    .line 386
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    return-object v0

    .line 374
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "aesCtrKey_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hmacKey_"

    aput-object v2, v0, v1

    .line 379
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    .line 382
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 371
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$1;)V

    return-object v0

    .line 368
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAesCtrKey()Lcom/google/crypto/tink/proto/AesCtrKey;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHmacKey()Lcom/google/crypto/tink/proto/HmacKey;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/HmacKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->version_:I

    return v0
.end method

.method public hasAesCtrKey()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->aesCtrKey_:Lcom/google/crypto/tink/proto/AesCtrKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHmacKey()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->hmacKey_:Lcom/google/crypto/tink/proto/HmacKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
