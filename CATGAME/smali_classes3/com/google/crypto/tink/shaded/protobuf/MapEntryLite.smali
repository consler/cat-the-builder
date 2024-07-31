.class public Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;
.super Ljava/lang/Object;
.source "MapEntryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_FIELD_NUMBER:I = 0x1

.field private static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    .local p1, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    .line 83
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "keyType"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p3, "valueType"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    .local p2, "defaultKey":Ljava/lang/Object;, "TK;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;-><init>(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    .line 76
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    .line 77
    iput-object p4, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 114
    .local p0, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSize(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 115
    const/4 v2, 0x2

    invoke-static {v1, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSize(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    return v0
.end method

.method public static newDefaultInstance(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;
    .locals 1
    .param p0, "keyType"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p2, "valueType"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 104
    .local p1, "defaultKey":Ljava/lang/Object;, "TK;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;-><init>(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v0
.end method

.method static parseEntry(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 5
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    .local p1, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 175
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 177
    .local v1, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 178
    .local v2, "tag":I
    if-nez v2, :cond_0

    .line 179
    goto :goto_1

    .line 181
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 182
    iget-object v3, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->parseField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 183
    :cond_1
    const/4 v3, 0x2

    iget-object v4, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 184
    iget-object v3, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->parseField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 186
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->skipField(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 187
    nop

    .line 191
    .end local v2    # "tag":I
    :goto_1
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 190
    :cond_3
    :goto_2
    goto :goto_0
.end method

.method static parseField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .param p2, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p3, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 135
    invoke-static {p0, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->readPrimitiveField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Groups are not allowed in maps."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 127
    :cond_2
    move-object v0, p3

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 128
    .local v0, "subBuilder":Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 129
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    return-object v1
.end method

.method static writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p1, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElement(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElement(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 111
    return-void
.end method


# virtual methods
.method public computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    .line 159
    invoke-static {v1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 158
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    return-object v0
.end method

.method getMetadata()Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public parseEntry(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "bytes"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->newCodedInput()Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->parseEntry(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public parseInto(Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p2, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    .local p1, "map":Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 202
    .local v0, "length":I
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 203
    .local v1, "oldLimit":I
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    iget-object v2, v2, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 204
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 207
    .local v3, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 208
    .local v4, "tag":I
    if-nez v4, :cond_0

    .line 209
    goto :goto_1

    .line 211
    :cond_0
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    iget-object v6, v6, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->parseField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 213
    :cond_1
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    iget-object v6, v6, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 214
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->parseField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {p2, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->skipField(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 217
    nop

    .line 222
    .end local v4    # "tag":I
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 223
    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->popLimit(I)V

    .line 224
    invoke-virtual {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void

    .line 220
    :cond_3
    :goto_2
    goto :goto_0
.end method

.method public serializeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeTag(II)V

    .line 147
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    invoke-static {v0, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 148
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->metadata:Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    invoke-static {p1, v0, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void
.end method
