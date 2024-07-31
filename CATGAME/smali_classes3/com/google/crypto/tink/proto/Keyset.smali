.class public final Lcom/google/crypto/tink/proto/Keyset;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "Keyset.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeysetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/Keyset$Builder;,
        Lcom/google/crypto/tink/proto/Keyset$Key;,
        Lcom/google/crypto/tink/proto/Keyset$KeyOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/Keyset;",
        "Lcom/google/crypto/tink/proto/Keyset$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeysetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

.field public static final KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/Keyset;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY_KEY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ">;"
        }
    .end annotation
.end field

.field private primaryKeyId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1287
    new-instance v0, Lcom/google/crypto/tink/proto/Keyset;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/Keyset;-><init>()V

    .line 1290
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/Keyset;
    sput-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    .line 1291
    const-class v1, Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 1293
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/Keyset;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 23
    return-void
.end method

.method static synthetic access$1300()Lcom/google/crypto/tink/proto/Keyset;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/crypto/tink/proto/Keyset;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;
    .param p1, "x1"    # I

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->setPrimaryKeyId(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->clearPrimaryKeyId()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/crypto/tink/proto/Keyset;ILcom/google/crypto/tink/proto/Keyset$Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/proto/Keyset;->setKey(ILcom/google/crypto/tink/proto/Keyset$Key;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/proto/Keyset$Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/crypto/tink/proto/Keyset;ILcom/google/crypto/tink/proto/Keyset$Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/proto/Keyset;->addKey(ILcom/google/crypto/tink/proto/Keyset$Key;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/crypto/tink/proto/Keyset;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->addAllKey(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->clearKey()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/crypto/tink/proto/Keyset;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/Keyset;
    .param p1, "x1"    # I

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->removeKey(I)V

    return-void
.end method

.method private addAllKey(Ljava/lang/Iterable;)V
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
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/crypto/tink/proto/Keyset$Key;>;"
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->ensureKeyIsMutable()V

    .line 895
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 897
    return-void
.end method

.method private addKey(ILcom/google/crypto/tink/proto/Keyset$Key;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/proto/Keyset$Key;
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

    .line 880
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->ensureKeyIsMutable()V

    .line 882
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 883
    return-void
.end method

.method private addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/Keyset$Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->ensureKeyIsMutable()V

    .line 868
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 869
    return-void
.end method

.method private clearKey()V
    .locals 1

    .line 907
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 908
    return-void
.end method

.method private clearPrimaryKeyId()V
    .locals 1

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/Keyset;->primaryKeyId_:I

    .line 772
    return-void
.end method

.method private ensureKeyIsMutable()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 839
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 841
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/Keyset;
    .locals 1

    .line 1296
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;
    .locals 1

    .line 997
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/Keyset$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/Keyset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1000
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/Keyset;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 974
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/Keyset;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 980
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 938
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 945
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 985
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 992
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 962
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 969
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 925
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 932
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 950
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;
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

    .line 957
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/Keyset;",
            ">;"
        }
    .end annotation

    .line 1302
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeKey(I)V
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

    .line 918
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->ensureKeyIsMutable()V

    .line 919
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 920
    return-void
.end method

.method private setKey(ILcom/google/crypto/tink/proto/Keyset$Key;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/proto/Keyset$Key;
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

    .line 853
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Keyset;->ensureKeyIsMutable()V

    .line 855
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 856
    return-void
.end method

.method private setPrimaryKeyId(I)V
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

    .line 759
    iput p1, p0, Lcom/google/crypto/tink/proto/Keyset;->primaryKeyId_:I

    .line 760
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

    .line 1236
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1277
    :pswitch_0
    return-object v2

    .line 1274
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1259
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 1260
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/Keyset;>;"
    if-nez v0, :cond_1

    .line 1261
    const-class v1, Lcom/google/crypto/tink/proto/Keyset;

    monitor-enter v1

    .line 1262
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/Keyset;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 1263
    if-nez v0, :cond_0

    .line 1264
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1267
    sput-object v0, Lcom/google/crypto/tink/proto/Keyset;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 1269
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1271
    :cond_1
    :goto_0
    return-object v0

    .line 1256
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/Keyset;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    return-object v0

    .line 1244
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "primaryKeyId_"

    aput-object v3, v0, v2

    const-string v2, "key_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    aput-object v2, v0, v1

    .line 1249
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 1252
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/Keyset;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/Keyset;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1241
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/Keyset$Builder;-><init>(Lcom/google/crypto/tink/proto/Keyset$1;)V

    return-object v0

    .line 1238
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/Keyset;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/Keyset;-><init>()V

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

.method public getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;
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

    .line 822
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getKeyOrBuilder(I)Lcom/google/crypto/tink/proto/Keyset$KeyOrBuilder;
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

    .line 834
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$KeyOrBuilder;

    return-object v0
.end method

.method public getKeyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/proto/Keyset$KeyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/google/crypto/tink/proto/Keyset;->key_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPrimaryKeyId()I
    .locals 1

    .line 746
    iget v0, p0, Lcom/google/crypto/tink/proto/Keyset;->primaryKeyId_:I

    return v0
.end method
