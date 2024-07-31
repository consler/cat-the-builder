.class public final Lcom/google/crypto/tink/proto/RegistryConfig;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "RegistryConfig.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/RegistryConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/RegistryConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/RegistryConfig;",
        "Lcom/google/crypto/tink/proto/RegistryConfig$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/RegistryConfigOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONFIG_NAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

.field public static final ENTRY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RegistryConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configName_:Ljava/lang/String;

.field private entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/proto/KeyTypeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 474
    new-instance v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RegistryConfig;-><init>()V

    .line 477
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/RegistryConfig;
    sput-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 478
    const-class v1, Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 480
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/RegistryConfig;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->configName_:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/RegistryConfig;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/RegistryConfig;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->setConfigName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/RegistryConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->clearConfigName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/RegistryConfig;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->setConfigNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/RegistryConfig;ILcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/proto/RegistryConfig;->setEntry(ILcom/google/crypto/tink/proto/KeyTypeEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/RegistryConfig;Lcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->addEntry(Lcom/google/crypto/tink/proto/KeyTypeEntry;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/RegistryConfig;ILcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/proto/RegistryConfig;->addEntry(ILcom/google/crypto/tink/proto/KeyTypeEntry;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/RegistryConfig;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->addAllEntry(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/RegistryConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->clearEntry()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/RegistryConfig;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->removeEntry(I)V

    return-void
.end method

.method private addAllEntry(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/proto/KeyTypeEntry;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/crypto/tink/proto/KeyTypeEntry;>;"
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->ensureEntryIsMutable()V

    .line 147
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 149
    return-void
.end method

.method private addEntry(ILcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->ensureEntryIsMutable()V

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method private addEntry(Lcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->ensureEntryIsMutable()V

    .line 130
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private clearConfigName()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RegistryConfig;->getConfigName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->configName_:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private clearEntry()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 155
    return-void
.end method

.method private ensureEntryIsMutable()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 111
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 113
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;
    .locals 1

    .line 483
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/RegistryConfig$Builder;
    .locals 1

    .line 239
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RegistryConfig;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/RegistryConfig;)Lcom/google/crypto/tink/proto/RegistryConfig$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 216
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 222
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 180
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 187
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 227
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 234
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 204
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 211
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 167
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 174
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 192
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RegistryConfig;
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

    .line 199
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RegistryConfig;",
            ">;"
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RegistryConfig;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeEntry(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->ensureEntryIsMutable()V

    .line 161
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private setConfigName(Ljava/lang/String;)V
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

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->configName_:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private setConfigNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
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

    .line 66
    invoke-static {p1}, Lcom/google/crypto/tink/proto/RegistryConfig;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->configName_:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private setEntry(ILcom/google/crypto/tink/proto/KeyTypeEntry;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RegistryConfig;->ensureEntryIsMutable()V

    .line 122
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
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

    .line 423
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 464
    :pswitch_0
    return-object v2

    .line 461
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 446
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 447
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/RegistryConfig;>;"
    if-nez v0, :cond_1

    .line 448
    const-class v1, Lcom/google/crypto/tink/proto/RegistryConfig;

    monitor-enter v1

    .line 449
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/RegistryConfig;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 450
    if-nez v0, :cond_0

    .line 451
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 454
    sput-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 456
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 458
    :cond_1
    :goto_0
    return-object v0

    .line 443
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/RegistryConfig;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    return-object v0

    .line 431
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "configName_"

    aput-object v3, v0, v2

    const-string v2, "entry_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    aput-object v2, v0, v1

    .line 436
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 439
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/RegistryConfig;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/RegistryConfig;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 428
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/RegistryConfig$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/RegistryConfig$Builder;-><init>(Lcom/google/crypto/tink/proto/RegistryConfig$1;)V

    return-object v0

    .line 425
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RegistryConfig;-><init>()V

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

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->configName_:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->configName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/proto/KeyTypeEntry;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntryOrBuilder(I)Lcom/google/crypto/tink/proto/KeyTypeEntryOrBuilder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTypeEntryOrBuilder;

    return-object v0
.end method

.method public getEntryOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/proto/KeyTypeEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RegistryConfig;->entry_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method
