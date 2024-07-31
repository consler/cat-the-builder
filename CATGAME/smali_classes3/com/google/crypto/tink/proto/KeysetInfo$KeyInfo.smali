.class public final Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "KeysetInfo.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KeysetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

.field public static final KEY_ID_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 742
    new-instance v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;-><init>()V

    .line 745
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    sput-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 746
    const-class v1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 748
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/proto/OutputPrefixType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 100
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->clearOutputPrefixType()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 100
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->clearTypeUrl()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setStatusValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/proto/KeyStatusType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/KeyStatusType;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 100
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->clearStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setKeyId(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 100
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->clearKeyId()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setOutputPrefixTypeValue(I)V

    return-void
.end method

.method private clearKeyId()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->keyId_:I

    .line 278
    return-void
.end method

.method private clearOutputPrefixType()V
    .locals 1

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->outputPrefixType_:I

    .line 340
    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->status_:I

    .line 240
    return-void
.end method

.method private clearTypeUrl()V
    .locals 1

    .line 162
    invoke-static {}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .locals 1

    .line 751
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 394
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 400
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 358
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 365
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 405
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 412
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 382
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 389
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 345
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 352
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 370
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
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

    .line 377
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
            ">;"
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeyId(I)V
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

    .line 266
    iput p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->keyId_:I

    .line 267
    return-void
.end method

.method private setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->outputPrefixType_:I

    .line 329
    return-void
.end method

.method private setOutputPrefixTypeValue(I)V
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

    .line 316
    iput p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->outputPrefixType_:I

    .line 317
    return-void
.end method

.method private setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/KeyStatusType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyStatusType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->status_:I

    .line 229
    return-void
.end method

.method private setStatusValue(I)V
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

    .line 216
    iput p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->status_:I

    .line 217
    return-void
.end method

.method private setTypeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iput-object p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private setTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 175
    invoke-static {p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 176
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    .line 178
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

    .line 690
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 735
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 732
    :pswitch_0
    return-object v2

    .line 729
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 714
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 715
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;>;"
    if-nez v0, :cond_1

    .line 716
    const-class v1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    monitor-enter v1

    .line 717
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 718
    if-nez v0, :cond_0

    .line 719
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 722
    sput-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 724
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 726
    :cond_1
    :goto_0
    return-object v0

    .line 711
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0

    .line 698
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "typeUrl_"

    aput-object v3, v0, v2

    const-string v2, "status_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keyId_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outputPrefixType_"

    aput-object v2, v0, v1

    .line 704
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 707
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 695
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;-><init>(Lcom/google/crypto/tink/proto/KeysetInfo$1;)V

    return-object v0

    .line 692
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;-><init>()V

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

.method public getKeyId()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->keyId_:I

    return v0
.end method

.method public getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 2

    .line 304
    iget v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->outputPrefixType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->forNumber(I)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 305
    .local v0, "result":Lcom/google/crypto/tink/proto/OutputPrefixType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/OutputPrefixType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getOutputPrefixTypeValue()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->outputPrefixType_:I

    return v0
.end method

.method public getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->status_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/KeyStatusType;->forNumber(I)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    .line 205
    .local v0, "result":Lcom/google/crypto/tink/proto/KeyStatusType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/KeyStatusType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getStatusValue()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->status_:I

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
