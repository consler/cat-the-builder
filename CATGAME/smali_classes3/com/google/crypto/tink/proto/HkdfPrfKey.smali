.class public final Lcom/google/crypto/tink/proto/HkdfPrfKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "HkdfPrfKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HkdfPrfKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/HkdfPrfKey;",
        "Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HkdfPrfKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HkdfPrfKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 372
    new-instance v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;-><init>()V

    .line 375
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/HkdfPrfKey;
    sput-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    .line 376
    const-class v1, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 378
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/HkdfPrfKey;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 16
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/HkdfPrfKey;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/HkdfPrfKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/HkdfPrfKey;Lcom/google/crypto/tink/proto/HkdfPrfParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HkdfPrfParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->setParams(Lcom/google/crypto/tink/proto/HkdfPrfParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/HkdfPrfKey;Lcom/google/crypto/tink/proto/HkdfPrfParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HkdfPrfParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->mergeParams(Lcom/google/crypto/tink/proto/HkdfPrfParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/HkdfPrfKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->clearParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/HkdfPrfKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/HkdfPrfKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->clearKeyValue()V

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/HkdfPrfKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 114
    return-void
.end method

.method private clearParams()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    .line 87
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->version_:I

    .line 41
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .locals 1

    .line 381
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/HkdfPrfParams;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HkdfPrfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/google/crypto/tink/proto/HkdfPrfParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/HkdfPrfParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    .line 76
    invoke-static {v0}, Lcom/google/crypto/tink/proto/HkdfPrfParams;->newBuilder(Lcom/google/crypto/tink/proto/HkdfPrfParams;)Lcom/google/crypto/tink/proto/HkdfPrfParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/HkdfPrfParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfParams$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HkdfPrfParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfParams;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    goto :goto_0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    .line 81
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;
    .locals 1

    .line 191
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/HkdfPrfKey;)Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/HkdfPrfKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 168
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 174
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 132
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 139
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 179
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 186
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 156
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 163
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 119
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 126
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 144
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HkdfPrfKey;
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

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HkdfPrfKey;",
            ">;"
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
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

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 107
    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/HkdfPrfParams;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HkdfPrfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    .line 66
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

    .line 33
    iput p1, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->version_:I

    .line 34
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

    .line 321
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 362
    :pswitch_0
    return-object v2

    .line 359
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 344
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 345
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/HkdfPrfKey;>;"
    if-nez v0, :cond_1

    .line 346
    const-class v1, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    monitor-enter v1

    .line 347
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/HkdfPrfKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 348
    if-nez v0, :cond_0

    .line 349
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 352
    sput-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 354
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 356
    :cond_1
    :goto_0
    return-object v0

    .line 341
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/HkdfPrfKey;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    return-object v0

    .line 329
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "version_"

    aput-object v3, v0, v2

    const-string v2, "params_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keyValue_"

    aput-object v2, v0, v1

    .line 334
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    .line 337
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/HkdfPrfKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 326
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/HkdfPrfKey$Builder;-><init>(Lcom/google/crypto/tink/proto/HkdfPrfKey$1;)V

    return-object v0

    .line 323
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/HkdfPrfKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HkdfPrfKey;-><init>()V

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

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/HkdfPrfParams;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/HkdfPrfParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/HkdfPrfParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HkdfPrfKey;->params_:Lcom/google/crypto/tink/proto/HkdfPrfParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
