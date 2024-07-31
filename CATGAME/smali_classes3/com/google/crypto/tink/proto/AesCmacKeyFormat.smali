.class public final Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCmacKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCmacKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCmacKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCmacKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x1

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacKeyFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keySize_:I

.field private params_:Lcom/google/crypto/tink/proto/AesCmacParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 315
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;-><init>()V

    .line 318
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    .line 319
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 321
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCmacKeyFormat;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->setKeySize(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesCmacKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->clearKeySize()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesCmacKeyFormat;Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->setParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/AesCmacKeyFormat;Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->mergeParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/AesCmacKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->clearParams()V

    return-void
.end method

.method private clearKeySize()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->keySize_:I

    .line 40
    return-void
.end method

.method private clearParams()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 86
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .locals 1

    .line 324
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/AesCmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 75
    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesCmacParams;->newBuilder(Lcom/google/crypto/tink/proto/AesCmacParams;)Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacParams;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    goto :goto_0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 80
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;
    .locals 1

    .line 163
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesCmacKeyFormat;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 140
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 146
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 104
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 111
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 158
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 128
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 135
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 91
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 98
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 116
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 123
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacKeyFormat;",
            ">;"
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeySize(I)V
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

    .line 32
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->keySize_:I

    .line 33
    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/AesCmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 65
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

    .line 265
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 305
    :pswitch_0
    return-object v2

    .line 302
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 288
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCmacKeyFormat;>;"
    if-nez v0, :cond_1

    .line 289
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    monitor-enter v1

    .line 290
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 291
    if-nez v0, :cond_0

    .line 292
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 295
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 297
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 299
    :cond_1
    :goto_0
    return-object v0

    .line 284
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/AesCmacKeyFormat;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0

    .line 273
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "keySize_"

    aput-object v3, v0, v2

    const-string v2, "params_"

    aput-object v2, v0, v1

    .line 277
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    .line 280
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 270
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCmacKeyFormat$1;)V

    return-object v0

    .line 267
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;-><init>()V

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

.method public getKeySize()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->keySize_:I

    return v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/AesCmacParams;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasParams()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
