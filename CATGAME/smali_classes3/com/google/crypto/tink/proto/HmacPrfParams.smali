.class public final Lcom/google/crypto/tink/proto/HmacPrfParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "HmacPrfParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HmacPrfParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/HmacPrfParams;",
        "Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HmacPrfParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HmacPrfParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hash_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 294
    new-instance v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HmacPrfParams;-><init>()V

    .line 297
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/HmacPrfParams;
    sput-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    .line 298
    const-class v1, Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 300
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/HmacPrfParams;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/HmacPrfParams;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/HmacPrfParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HmacPrfParams;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HmacPrfParams;->setHashValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/HmacPrfParams;Lcom/google/crypto/tink/proto/HashType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HmacPrfParams;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HashType;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HmacPrfParams;->setHash(Lcom/google/crypto/tink/proto/HashType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/HmacPrfParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HmacPrfParams;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HmacPrfParams;->clearHash()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/HmacPrfParams;->hash_:I

    .line 76
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/HmacPrfParams;
    .locals 1

    .line 303
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;
    .locals 1

    .line 153
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacPrfParams;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/HmacPrfParams;)Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/HmacPrfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HmacPrfParams;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 130
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/HmacPrfParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 136
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/HmacPrfParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 94
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 101
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 141
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 148
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 118
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 125
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 81
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 88
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 106
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacPrfParams;
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

    .line 113
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HmacPrfParams;",
            ">;"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacPrfParams;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHash(Lcom/google/crypto/tink/proto/HashType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HashType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/proto/HmacPrfParams;->hash_:I

    .line 65
    return-void
.end method

.method private setHashValue(I)V
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

    .line 52
    iput p1, p0, Lcom/google/crypto/tink/proto/HmacPrfParams;->hash_:I

    .line 53
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

    .line 246
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 284
    :pswitch_0
    return-object v2

    .line 281
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 267
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/HmacPrfParams;>;"
    if-nez v0, :cond_1

    .line 268
    const-class v1, Lcom/google/crypto/tink/proto/HmacPrfParams;

    monitor-enter v1

    .line 269
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/HmacPrfParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 270
    if-nez v0, :cond_0

    .line 271
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 274
    sput-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 276
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 278
    :cond_1
    :goto_0
    return-object v0

    .line 263
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/HmacPrfParams;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    return-object v0

    .line 254
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hash_"

    aput-object v2, v0, v1

    .line 257
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c"

    .line 259
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/HmacPrfParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/HmacPrfParams;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 251
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;-><init>(Lcom/google/crypto/tink/proto/HmacPrfParams$1;)V

    return-object v0

    .line 248
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HmacPrfParams;-><init>()V

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

.method public getHash()Lcom/google/crypto/tink/proto/HashType;
    .locals 2

    .line 40
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacPrfParams;->hash_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HashType;->forNumber(I)Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    .line 41
    .local v0, "result":Lcom/google/crypto/tink/proto/HashType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HashType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getHashValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacPrfParams;->hash_:I

    return v0
.end method
