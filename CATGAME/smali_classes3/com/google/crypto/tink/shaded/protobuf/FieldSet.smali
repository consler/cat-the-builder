.class final Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/FieldSet$Builder;,
        Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FIELD_MAP_ARRAY_SIZE:I = 0x10

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    .line 83
    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "fields":Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;, "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    .line 94
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->makeImmutable()V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Lcom/google/crypto/tink/shaded/protobuf/FieldSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .param p2, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/FieldSet$1;

    .line 51
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "dummy"    # Z

    .line 88
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->makeImmutable()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Z)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .param p1, "x1"    # Z

    .line 51
    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Z)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/FieldSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    .line 51
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/crypto/tink/shaded/protobuf/FieldSet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/FieldSet;)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 51
    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isValidType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Map$Entry;

    .line 51
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 51
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static cloneAllFieldsMap(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Z)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;
    .locals 3
    .param p1, "copyList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 205
    .local p0, "fields":Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;, "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    move-result-object v0

    .line 206
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;, "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 207
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 210
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-static {v0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    .line 211
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 212
    :cond_1
    return-object v0
.end method

.method private static cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .locals 4
    .param p2, "copyList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 217
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Object;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    .line 218
    .local v0, "key":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 220
    move-object v2, v1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_0
    return-void
.end method

.method private static cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 508
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 509
    move-object v0, p0

    check-cast v0, [B

    .line 510
    .local v0, "bytes":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 511
    .local v1, "copy":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    return-object v1

    .line 514
    .end local v0    # "bytes":[B
    .end local v1    # "copy":[B
    :cond_0
    return-object p0
.end method

.method static computeElementSize(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 2
    .param p0, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p1, "number"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 811
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 812
    .local v0, "tagSize":I
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_0

    .line 815
    mul-int/lit8 v0, v0, 0x2

    .line 817
    :cond_0
    invoke-static {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static computeElementSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 2
    .param p0, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 829
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 888
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :pswitch_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 882
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 884
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 871
    :pswitch_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 869
    :pswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 867
    :pswitch_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 865
    :pswitch_4
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 863
    :pswitch_5
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 851
    :pswitch_6
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 852
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 854
    :cond_1
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v0

    return v0

    .line 857
    :pswitch_7
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 858
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 860
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 874
    :pswitch_8
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v0, :cond_3

    .line 875
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 877
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 849
    :pswitch_9
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 847
    :pswitch_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    return v0

    .line 845
    :pswitch_b
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 843
    :pswitch_c
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 841
    :pswitch_d
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 839
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 837
    :pswitch_f
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 835
    :pswitch_10
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    return v0

    .line 833
    :pswitch_11
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 893
    .local p0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 894
    .local v0, "type":Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 895
    .local v1, "number":I
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 896
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    const/4 v2, 0x0

    .line 898
    .local v2, "dataSize":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 899
    .local v4, "element":Ljava/lang/Object;
    invoke-static {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 900
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 901
    :cond_0
    nop

    .line 902
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 903
    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 901
    return v3

    .line 905
    .end local v2    # "dataSize":I
    :cond_1
    const/4 v2, 0x0

    .line 906
    .local v2, "size":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 907
    .restart local v4    # "element":Ljava/lang/Object;
    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSize(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 908
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_1

    .line 909
    :cond_2
    return v2

    .line 912
    .end local v2    # "size":I
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSize(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public static emptySet()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 783
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    .line 784
    .local v0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 785
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 786
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 788
    instance-of v2, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 789
    nop

    .line 790
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    .line 789
    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)I

    move-result v2

    return v2

    .line 792
    :cond_0
    nop

    .line 793
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 792
    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;)I

    move-result v2

    return v2

    .line 796
    :cond_1
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeFieldSize(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method static getWireFormatForFieldType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Z)I
    .locals 1
    .param p0, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p1, "isPacked"    # Z

    .line 490
    if-eqz p1, :cond_0

    .line 491
    const/4 v0, 0x2

    return v0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    return v0
.end method

.method private static isInitialized(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 459
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    .line 460
    .local v0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    .line 461
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 462
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 463
    .local v4, "element":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    invoke-interface {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    .line 464
    return v2

    .line 466
    .end local v4    # "element":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 468
    :cond_2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 469
    .local v1, "value":Ljava/lang/Object;
    instance-of v4, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v4, :cond_3

    .line 470
    move-object v4, v1

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    .line 471
    return v2

    .line 473
    :cond_3
    instance-of v2, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v2, :cond_4

    .line 474
    return v3

    .line 476
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong object type used with protocol message reflection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    .end local v1    # "value":Ljava/lang/Object;
    :cond_5
    :goto_1
    return v3
.end method

.method private static isValidType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 408
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 431
    return v2

    .line 429
    :pswitch_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 426
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    .line 423
    :pswitch_2
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-nez v0, :cond_5

    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1

    .line 421
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    return v0

    .line 419
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    return v0

    .line 417
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    return v0

    .line 415
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    return v0

    .line 413
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    return v0

    .line 411
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    .line 521
    .local v0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 522
    .local v1, "otherValue":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 523
    move-object v2, v1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    .line 526
    :cond_0
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 528
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 531
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 532
    .local v4, "element":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 534
    :cond_2
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_5

    .line 536
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 537
    .restart local v2    # "value":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 538
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    :cond_4
    move-object v3, v2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 543
    invoke-interface {v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 544
    invoke-interface {v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v2

    .line 545
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 548
    :cond_5
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :goto_2
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/FieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$1;)V

    return-object v0
.end method

.method public static newFieldSet()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p2, "checkUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    if-eqz p2, :cond_0

    .line 569
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->readPrimitiveField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 571
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->readPrimitiveField(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private verifyType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p2, "value"    # Ljava/lang/Object;

    .line 394
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isValidType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return-void

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static writeElement(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .param p0, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p2, "number"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 631
    move-object v0, p3

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p0, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    goto :goto_0

    .line 633
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeTag(II)V

    .line 634
    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElementNoTag(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 636
    :goto_0
    return-void
.end method

.method static writeElementNoTag(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .param p0, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 711
    :pswitch_0
    instance-of v0, p2, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 712
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 714
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 707
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 708
    goto/16 :goto_0

    .line 704
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 705
    goto/16 :goto_0

    .line 701
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 702
    goto/16 :goto_0

    .line 698
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 699
    goto/16 :goto_0

    .line 695
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 696
    goto/16 :goto_0

    .line 688
    :pswitch_6
    instance-of v0, p2, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 689
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 691
    :cond_1
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    .line 693
    goto/16 :goto_0

    .line 681
    :pswitch_7
    instance-of v0, p2, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 682
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 684
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 686
    goto :goto_0

    .line 678
    :pswitch_8
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 679
    goto :goto_0

    .line 675
    :pswitch_9
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 676
    goto :goto_0

    .line 672
    :pswitch_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 673
    goto :goto_0

    .line 669
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 670
    goto :goto_0

    .line 666
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 667
    goto :goto_0

    .line 663
    :pswitch_d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 664
    goto :goto_0

    .line 660
    :pswitch_e
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 661
    goto :goto_0

    .line 657
    :pswitch_f
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 658
    goto :goto_0

    .line 654
    :pswitch_10
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 655
    goto :goto_0

    .line 651
    :pswitch_11
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 652
    nop

    .line 718
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    .local p0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 725
    .local v0, "type":Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 726
    .local v1, "number":I
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 727
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 728
    .local v2, "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 729
    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeTag(II)V

    .line 731
    const/4 v3, 0x0

    .line 732
    .local v3, "dataSize":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 733
    .local v5, "element":Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    .line 734
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 737
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 738
    .restart local v5    # "element":Ljava/lang/Object;
    invoke-static {p2, v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElementNoTag(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 739
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_1

    .line 740
    .end local v3    # "dataSize":I
    :cond_1
    goto :goto_3

    .line 741
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 742
    .local v4, "element":Ljava/lang/Object;
    invoke-static {p2, v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElement(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 743
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_2

    .line 745
    .end local v2    # "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    :goto_3
    goto :goto_4

    .line 746
    :cond_4
    instance-of v2, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v2, :cond_5

    .line 747
    move-object v2, p1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElement(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_4

    .line 749
    :cond_5
    invoke-static {p2, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeElement(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 752
    :goto_4
    return-void
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .locals 4
    .param p2, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    .line 600
    .local v0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_1

    .line 601
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 604
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 605
    move-object v2, v1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    .line 607
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 608
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 609
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 611
    :goto_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 3
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 367
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->verifyType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "existingValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 383
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    return-void

    .line 368
    .end local v0    # "existingValue":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 187
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->clear()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    .line 189
    return-void
.end method

.method public clearField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 304
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    .line 308
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->newFieldSet()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v0

    .line 171
    .local v0, "clone":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 173
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 171
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 177
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 178
    :cond_1
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    .line 179
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->clone()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    if-ne p0, p1, :cond_0

    .line 144
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    if-nez v0, :cond_1

    .line 148
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    .line 152
    .local v0, "other":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;Z)Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    move-result-object v0

    .line 195
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;, "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->makeImmutable()V

    .line 198
    :cond_0
    return-object v0

    .line 200
    .end local v0    # "result":Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;, "Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 268
    move-object v1, v0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    .line 270
    :cond_0
    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .locals 4

    .line 772
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .line 773
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v0, v2

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 777
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    .line 778
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 779
    :cond_1
    return v0
.end method

.method public getRepeatedField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 337
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 335
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 328
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedFieldCount(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 312
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 319
    const/4 v1, 0x0

    return v1

    .line 321
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 313
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 759
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .line 760
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 762
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeFieldSize(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 760
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 765
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->computeFieldSize(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 766
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 767
    :cond_1
    return v0
.end method

.method public hasField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 157
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 118
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .line 138
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 4

    .line 443
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    return v2

    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 449
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 450
    return v2

    .line 452
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_1

    .line 453
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .locals 1

    .line 124
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->makeImmutable()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isImmutable:Z

    .line 129
    return-void
.end method

.method public mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 499
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "other":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 500
    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 503
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 504
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 505
    :cond_1
    return-void
.end method

.method public setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "newList":Ljava/util/List;
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 289
    .local v2, "element":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->verifyType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 290
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 291
    :cond_0
    move-object p2, v0

    .line 292
    .end local v0    # "newList":Ljava/util/List;
    goto :goto_1

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->verifyType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 296
    :goto_1
    instance-of v0, p2, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hasLazyField:Z

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method public setRepeatedField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 2
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "list":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 357
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->verifyType(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 358
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void

    .line 354
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 348
    .end local v0    # "list":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeMessageSetTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 593
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-direct {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 594
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 595
    :cond_1
    return-void
.end method

.method public writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 580
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 578
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->fields:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->writeField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 584
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1

    .line 585
    :cond_1
    return-void
.end method
