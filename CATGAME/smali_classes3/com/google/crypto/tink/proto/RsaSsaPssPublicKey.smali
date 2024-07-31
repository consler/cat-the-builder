.class public final Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "RsaSsaPssPublicKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/RsaSsaPssPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;",
        "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

.field public static final E_FIELD_NUMBER:I = 0x4

.field public static final N_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private e_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private n_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;-><init>()V

    .line 568
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    sput-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    .line 569
    const-class v1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 571
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 20
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->mergeParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setN(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearN()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setE(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearE()V

    return-void
.end method

.method private clearE()V
    .locals 1

    .line 207
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getE()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 208
    return-void
.end method

.method private clearN()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getN()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 166
    return-void
.end method

.method private clearParams()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 124
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->version_:I

    .line 58
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1

    .line 574
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/RsaSsaPssParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 109
    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssParams;->newBuilder(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    goto :goto_0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 114
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;
    .locals 1

    .line 285
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 262
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 268
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 226
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 233
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 273
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 280
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 250
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 257
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 213
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 220
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 238
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
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

    .line 245
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;",
            ">;"
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setE(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 196
    return-void
.end method

.method private setN(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 154
    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/RsaSsaPssParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 95
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

    .line 46
    iput p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->version_:I

    .line 47
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

    .line 513
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 558
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 555
    :pswitch_0
    return-object v2

    .line 552
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 537
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 538
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;>;"
    if-nez v0, :cond_1

    .line 539
    const-class v1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    monitor-enter v1

    .line 540
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 541
    if-nez v0, :cond_0

    .line 542
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 545
    sput-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 547
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 549
    :cond_1
    :goto_0
    return-object v0

    .line 534
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0

    .line 521
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "params_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "n_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "e_"

    aput-object v2, v0, v1

    .line 527
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    .line 530
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 518
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;-><init>(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$1;)V

    return-object v0

    .line 515
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;-><init>()V

    return-object v0

    nop

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

.method public getE()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getN()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/RsaSsaPssParams;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
