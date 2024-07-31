.class final Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 101
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/MessageLite;ZZ[IIILcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)V
    .locals 16
    .param p1, "buffer"    # [I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "minFieldNumber"    # I
    .param p4, "maxFieldNumber"    # I
    .param p5, "defaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .param p6, "proto3"    # Z
    .param p7, "useCachedSizeField"    # Z
    .param p8, "intArray"    # [I
    .param p9, "checkInitialized"    # I
    .param p10, "mapFieldPositions"    # I
    .param p11, "newInstanceSchema"    # Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .param p12, "listFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .param p15, "mapFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p13, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<**>;"
    .local p14, "extensionSchema":Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;, "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    .line 191
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 192
    move/from16 v5, p3

    iput v5, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->minFieldNumber:I

    .line 193
    move/from16 v6, p4

    iput v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->maxFieldNumber:I

    .line 195
    instance-of v7, v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iput-boolean v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->lite:Z

    .line 196
    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    .line 197
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->hasExtensions(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    .line 198
    move/from16 v8, p7

    iput-boolean v8, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 200
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    .line 201
    move/from16 v10, p9

    iput v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .line 202
    move/from16 v11, p10

    iput v11, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 204
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    .line 205
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 206
    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    .line 207
    iput-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    .line 208
    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 209
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 210
    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5744
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5719
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private decodeMapEntry([BIILcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 18
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p6, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4419
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p4, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p5, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v0, p2

    invoke-static {v7, v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4420
    .end local p2    # "position":I
    .local v0, "position":I
    iget v11, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4421
    .local v11, "length":I
    if-ltz v11, :cond_7

    sub-int v1, v8, v0

    if-gt v11, v1, :cond_7

    .line 4424
    add-int v12, v0, v11

    .line 4425
    .local v12, "end":I
    iget-object v1, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 4426
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    .line 4427
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .local v13, "key":Ljava/lang/Object;, "TK;"
    .local v14, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    if-ge v0, v12, :cond_5

    .line 4428
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    aget-byte v0, v7, v0

    .line 4429
    .local v0, "tag":I
    if-gez v0, :cond_0

    .line 4430
    invoke-static {v0, v7, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4431
    iget v0, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    move v15, v0

    move v6, v1

    goto :goto_1

    .line 4429
    :cond_0
    move v15, v0

    move v6, v1

    .line 4433
    .end local v0    # "tag":I
    .end local v1    # "position":I
    .local v6, "position":I
    .local v15, "tag":I
    :goto_1
    ushr-int/lit8 v5, v15, 0x3

    .line 4434
    .local v5, "fieldNumber":I
    and-int/lit8 v4, v15, 0x7

    .line 4435
    .local v4, "wireType":I
    const/4 v0, 0x1

    if-eq v5, v0, :cond_3

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 p2, v11

    move v11, v4

    goto/16 :goto_2

    .line 4445
    :cond_1
    iget-object v0, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v4, v0, :cond_2

    .line 4446
    iget-object v3, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 4452
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 4447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move-object/from16 v17, v3

    move/from16 v3, p3

    move/from16 p2, v11

    move v11, v4

    .end local v4    # "wireType":I
    .local v11, "wireType":I
    .local p2, "length":I
    move-object/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "fieldNumber":I
    .local v17, "fieldNumber":I
    move-object/from16 v5, v16

    move/from16 v16, v6

    .end local v6    # "position":I
    .local v16, "position":I
    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4454
    .end local v16    # "position":I
    .local v0, "position":I
    iget-object v14, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4455
    move/from16 v11, p2

    goto :goto_0

    .line 4445
    .end local v0    # "position":I
    .end local v17    # "fieldNumber":I
    .end local p2    # "length":I
    .restart local v4    # "wireType":I
    .restart local v5    # "fieldNumber":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :cond_2
    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 p2, v11

    move v11, v4

    .end local v4    # "wireType":I
    .end local v5    # "fieldNumber":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .restart local v16    # "position":I
    .restart local v17    # "fieldNumber":I
    .restart local p2    # "length":I
    goto :goto_2

    .line 4437
    .end local v16    # "position":I
    .end local v17    # "fieldNumber":I
    .end local p2    # "length":I
    .restart local v4    # "wireType":I
    .restart local v5    # "fieldNumber":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :cond_3
    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 p2, v11

    move v11, v4

    .end local v4    # "wireType":I
    .end local v5    # "fieldNumber":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .restart local v16    # "position":I
    .restart local v17    # "fieldNumber":I
    .restart local p2    # "length":I
    iget-object v0, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v11, v0, :cond_4

    .line 4438
    iget-object v4, v9, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    .line 4439
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4440
    .end local v16    # "position":I
    .restart local v0    # "position":I
    iget-object v13, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4441
    move/from16 v11, p2

    goto/16 :goto_0

    .line 4461
    .end local v0    # "position":I
    .restart local v16    # "position":I
    :cond_4
    :goto_2
    move/from16 v1, v16

    .end local v16    # "position":I
    .restart local v1    # "position":I
    invoke-static {v15, v7, v1, v8, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4462
    .end local v1    # "position":I
    .end local v11    # "wireType":I
    .end local v15    # "tag":I
    .end local v17    # "fieldNumber":I
    .restart local v0    # "position":I
    move/from16 v11, p2

    goto/16 :goto_0

    .line 4463
    .end local p2    # "length":I
    .local v11, "length":I
    :cond_5
    move/from16 p2, v11

    .end local v11    # "length":I
    .restart local p2    # "length":I
    if-ne v0, v12, :cond_6

    .line 4466
    move-object/from16 v1, p5

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4467
    return v12

    .line 4464
    :cond_6
    move-object/from16 v1, p5

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 4421
    .end local v12    # "end":I
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .end local p2    # "length":I
    .restart local v11    # "length":I
    :cond_7
    move-object/from16 v1, p5

    move/from16 p2, v11

    .line 4422
    .end local v11    # "length":I
    .restart local p2    # "length":I
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private decodeMapEntryValue([BIILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "fieldType"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p6, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4351
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p5, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4405
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4402
    :pswitch_0
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4403
    goto/16 :goto_1

    .line 4398
    :pswitch_1
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4399
    iget-wide v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4400
    goto/16 :goto_1

    .line 4394
    :pswitch_2
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4395
    iget v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4396
    goto/16 :goto_1

    .line 4391
    :pswitch_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 4390
    invoke-static {v0, p1, p2, p3, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4392
    goto :goto_1

    .line 4385
    :pswitch_4
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4386
    iget-wide v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4387
    goto :goto_1

    .line 4380
    :pswitch_5
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4381
    iget v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4382
    goto :goto_1

    .line 4374
    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4375
    add-int/lit8 p2, p2, 0x4

    .line 4376
    goto :goto_1

    .line 4370
    :pswitch_7
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4371
    add-int/lit8 p2, p2, 0x8

    .line 4372
    goto :goto_1

    .line 4365
    :pswitch_8
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4366
    add-int/lit8 p2, p2, 0x4

    .line 4367
    goto :goto_1

    .line 4360
    :pswitch_9
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4361
    add-int/lit8 p2, p2, 0x8

    .line 4362
    goto :goto_1

    .line 4357
    :pswitch_a
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4358
    goto :goto_1

    .line 4353
    :pswitch_b
    invoke-static {p1, p2, p6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4354
    iget-wide v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p6, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4355
    nop

    .line 4407
    :goto_1
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5703
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 10
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 807
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 808
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 810
    .local v1, "offset":J
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 932
    return v5

    .line 927
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 928
    invoke-static {v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    nop

    .line 927
    :goto_0
    return v4

    .line 907
    :pswitch_1
    nop

    .line 908
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 907
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 904
    :pswitch_2
    nop

    .line 905
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 904
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 868
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 870
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 869
    invoke-static {v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    nop

    .line 868
    :goto_1
    return v4

    .line 865
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 866
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    nop

    .line 865
    :goto_2
    return v4

    .line 862
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 863
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    nop

    .line 862
    :goto_3
    return v4

    .line 859
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 860
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    nop

    .line 859
    :goto_4
    return v4

    .line 856
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 857
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_5

    move v4, v5

    goto :goto_5

    :cond_5
    nop

    .line 856
    :goto_5
    return v4

    .line 853
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 854
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_6

    move v4, v5

    goto :goto_6

    :cond_6
    nop

    .line 853
    :goto_6
    return v4

    .line 850
    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 851
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_7

    move v4, v5

    goto :goto_7

    :cond_7
    nop

    .line 850
    :goto_7
    return v4

    .line 846
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 848
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 847
    invoke-static {v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v4, v5

    goto :goto_8

    :cond_8
    nop

    .line 846
    :goto_8
    return v4

    .line 842
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 844
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 843
    invoke-static {v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v4, v5

    goto :goto_9

    :cond_9
    nop

    .line 842
    :goto_9
    return v4

    .line 838
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 840
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 839
    invoke-static {v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v4, v5

    goto :goto_a

    :cond_a
    nop

    .line 838
    :goto_a
    return v4

    .line 835
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 836
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-ne v3, v6, :cond_b

    move v4, v5

    goto :goto_b

    :cond_b
    nop

    .line 835
    :goto_b
    return v4

    .line 832
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 833
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_c

    move v4, v5

    goto :goto_c

    :cond_c
    nop

    .line 832
    :goto_c
    return v4

    .line 829
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 830
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_d

    move v4, v5

    goto :goto_d

    :cond_d
    nop

    .line 829
    :goto_d
    return v4

    .line 826
    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 827
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_e

    move v4, v5

    goto :goto_e

    :cond_e
    nop

    .line 826
    :goto_e
    return v4

    .line 823
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 824
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_f

    move v4, v5

    goto :goto_f

    :cond_f
    nop

    .line 823
    :goto_f
    return v4

    .line 820
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 821
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_10

    move v4, v5

    goto :goto_10

    :cond_10
    nop

    .line 820
    :goto_10
    return v4

    .line 816
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 817
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 818
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v3, v6, :cond_11

    move v4, v5

    goto :goto_11

    :cond_11
    nop

    .line 816
    :goto_11
    return v4

    .line 812
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 813
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 814
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_12

    move v4, v5

    goto :goto_12

    :cond_12
    nop

    .line 812
    :goto_12
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 16
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5452
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    .line 5453
    .local v9, "fieldNumber":I
    invoke-direct {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    .line 5454
    .local v10, "offset":J
    move-object/from16 v12, p1

    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    .line 5455
    .local v13, "mapField":Ljava/lang/Object;
    if-nez v13, :cond_0

    .line 5456
    return-object p3

    .line 5458
    :cond_0
    invoke-direct {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v14

    .line 5459
    .local v14, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    if-nez v14, :cond_1

    .line 5460
    return-object p3

    .line 5462
    :cond_1
    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    .line 5464
    .local v15, "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    nop

    .line 5465
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v9

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0

    .line 5467
    .end local p3    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "unknownFields":Ljava/lang/Object;, "TUB;"
    return-object v0
.end method

.method private final filterUnknownEnumMap(IILjava/util/Map;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "number"    # I
    .param p4, "enumVerifier"    # Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5478
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p3, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 5479
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    .line 5480
    .local v0, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5482
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p4, v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5483
    if-nez p5, :cond_0

    .line 5484
    invoke-virtual {p6}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    .line 5486
    :cond_0
    nop

    .line 5487
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 5488
    .local v3, "entrySize":I
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString$CodedBuilder;

    move-result-object v4

    .line 5489
    .local v4, "codedBuilder":Lcom/google/crypto/tink/shaded/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;

    move-result-object v5

    .line 5491
    .local v5, "codedOutput":Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite;->writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5495
    nop

    .line 5496
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$CodedBuilder;->build()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p6, p5, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 5497
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 5492
    :catch_0
    move-exception v6

    .line 5494
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 5499
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "entrySize":I
    .end local v4    # "codedBuilder":Lcom/google/crypto/tink/shaded/protobuf/ByteString$CodedBuilder;
    .end local v5    # "codedOutput":Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 5500
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5707
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 2
    .param p1, "pos"    # I

    .line 4857
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 2
    .param p1, "pos"    # I

    .line 4853
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .locals 5
    .param p1, "pos"    # I

    .line 4842
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 4843
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Schema;

    .line 4844
    .local v1, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    if-eqz v1, :cond_0

    .line 4845
    return-object v1

    .line 4847
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    .line 4848
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 4849
    return-object v1
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 4334
    move-object v0, p0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 4335
    .local v0, "unknownFields":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4336
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4337
    move-object v1, p0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iput-object v0, v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 4339
    :cond_0
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1414
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1416
    .local v2, "size":I
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1417
    .local v3, "unsafe":Lsun/misc/Unsafe;
    const/4 v4, -0x1

    .line 1418
    .local v4, "currentPresenceFieldOffset":I
    const/4 v5, 0x0

    .line 1419
    .local v5, "currentPresenceField":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    if-ge v6, v7, :cond_26

    .line 1420
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 1421
    .local v7, "typeAndOffset":I
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    .line 1423
    .local v8, "number":I
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v9

    .line 1424
    .local v9, "fieldType":I
    const/4 v10, 0x0

    .line 1425
    .local v10, "presenceMaskAndOffset":I
    const/4 v11, 0x0

    .line 1426
    .local v11, "presenceMask":I
    const/16 v12, 0x11

    const v13, 0xfffff

    const/4 v14, 0x1

    if-gt v9, v12, :cond_1

    .line 1427
    iget-object v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v6, 0x2

    aget v10, v12, v15

    .line 1428
    and-int v12, v10, v13

    .line 1429
    .local v12, "presenceFieldOffset":I
    ushr-int/lit8 v13, v10, 0x14

    shl-int v11, v14, v13

    .line 1430
    if-eq v12, v4, :cond_0

    .line 1431
    move v4, v12

    .line 1432
    int-to-long v14, v12

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 1434
    .end local v12    # "presenceFieldOffset":I
    :cond_0
    goto :goto_1

    :cond_1
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_0

    sget-object v12, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    .line 1435
    invoke-virtual {v12}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v12

    if-lt v9, v12, :cond_2

    sget-object v12, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    .line 1436
    invoke-virtual {v12}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v12

    if-gt v9, v12, :cond_2

    .line 1437
    iget-object v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    and-int v10, v12, v13

    .line 1440
    :cond_2
    :goto_1
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    .line 1442
    .local v12, "offset":J
    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_0

    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .local v16, "currentPresenceFieldOffset":I
    goto/16 :goto_4

    .line 1959
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_0
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1960
    nop

    .line 1963
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 1964
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v15

    .line 1961
    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1959
    :cond_3
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1954
    :pswitch_1
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1955
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1954
    :cond_4
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1949
    :pswitch_2
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1950
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1949
    :cond_5
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1944
    :pswitch_3
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1945
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1944
    :cond_6
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1939
    :pswitch_4
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1940
    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1939
    :cond_7
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1934
    :pswitch_5
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1935
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1934
    :cond_8
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1929
    :pswitch_6
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1930
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1929
    :cond_9
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1922
    :pswitch_7
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1923
    nop

    .line 1925
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 1924
    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1922
    :cond_a
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1916
    :pswitch_8
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1917
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1918
    .local v14, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1919
    .end local v14    # "value":Ljava/lang/Object;
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1916
    :cond_b
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1906
    :pswitch_9
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1907
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1908
    .restart local v14    # "value":Ljava/lang/Object;
    instance-of v15, v14, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v15, :cond_c

    .line 1909
    move-object v15, v14

    check-cast v15, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v8, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_2

    .line 1911
    :cond_c
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1913
    .end local v14    # "value":Ljava/lang/Object;
    :goto_2
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1906
    :cond_d
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1901
    :pswitch_a
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1902
    const/4 v14, 0x1

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1901
    :cond_e
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1896
    :pswitch_b
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1897
    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1896
    :cond_f
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1891
    :pswitch_c
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1892
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1891
    :cond_10
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1886
    :pswitch_d
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1887
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1886
    :cond_11
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1881
    :pswitch_e
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1882
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1881
    :cond_12
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1876
    :pswitch_f
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1877
    invoke-static {v1, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1876
    :cond_13
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1871
    :pswitch_10
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1872
    const/4 v14, 0x0

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1871
    :cond_14
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1866
    :pswitch_11
    invoke-direct {v0, v1, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1867
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1866
    :cond_15
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1861
    :pswitch_12
    iget-object v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 1863
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    .line 1862
    invoke-interface {v14, v8, v15, v4}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1864
    goto/16 :goto_4

    .line 1853
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_13
    move/from16 v16, v4

    .line 1856
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1857
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v14

    .line 1854
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1858
    goto/16 :goto_4

    .line 1838
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_14
    move/from16 v16, v4

    .line 1840
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1839
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1841
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1842
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_16

    .line 1843
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1845
    :cond_16
    nop

    .line 1846
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1847
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1822
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_15
    move/from16 v16, v4

    .line 1824
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1823
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1825
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1826
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_17

    .line 1827
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1829
    :cond_17
    nop

    .line 1830
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1831
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1806
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_16
    move/from16 v16, v4

    .line 1808
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1807
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1809
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1810
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_18

    .line 1811
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1813
    :cond_18
    nop

    .line 1814
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1815
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1790
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_17
    move/from16 v16, v4

    .line 1792
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1791
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1793
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1794
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_19

    .line 1795
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1797
    :cond_19
    nop

    .line 1798
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1799
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1774
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_18
    move/from16 v16, v4

    .line 1776
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1775
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1777
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1778
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1a

    .line 1779
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1781
    :cond_1a
    nop

    .line 1782
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1783
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1758
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_19
    move/from16 v16, v4

    .line 1760
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1759
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1761
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1762
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1b

    .line 1763
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1765
    :cond_1b
    nop

    .line 1766
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1767
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1742
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1a
    move/from16 v16, v4

    .line 1744
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1743
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1745
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1746
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1c

    .line 1747
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1749
    :cond_1c
    nop

    .line 1750
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1751
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1726
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1b
    move/from16 v16, v4

    .line 1728
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1727
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1729
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1730
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1d

    .line 1731
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1733
    :cond_1d
    nop

    .line 1734
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1735
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1710
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1c
    move/from16 v16, v4

    .line 1712
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1711
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1713
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1714
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1e

    .line 1715
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1717
    :cond_1e
    nop

    .line 1718
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1719
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1694
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1d
    move/from16 v16, v4

    .line 1696
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1695
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1697
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1698
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1f

    .line 1699
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1701
    :cond_1f
    nop

    .line 1702
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1703
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1678
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1e
    move/from16 v16, v4

    .line 1680
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1679
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1681
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1682
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_20

    .line 1683
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1685
    :cond_20
    nop

    .line 1686
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1687
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1662
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1f
    move/from16 v16, v4

    .line 1664
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1663
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1665
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1666
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_21

    .line 1667
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1669
    :cond_21
    nop

    .line 1670
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1671
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1646
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_20
    move/from16 v16, v4

    .line 1648
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1647
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1649
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1650
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_22

    .line 1651
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1653
    :cond_22
    nop

    .line 1654
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1655
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1630
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_21
    move/from16 v16, v4

    .line 1632
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1631
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1633
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1634
    iget-boolean v14, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_23

    .line 1635
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1637
    :cond_23
    nop

    .line 1638
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1639
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1624
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_22
    move/from16 v16, v4

    .line 1626
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1625
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1627
    goto/16 :goto_4

    .line 1619
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_23
    move/from16 v16, v4

    .line 1621
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1620
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1622
    goto/16 :goto_4

    .line 1614
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_24
    move/from16 v16, v4

    .line 1616
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1615
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1617
    goto/16 :goto_4

    .line 1609
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_25
    move/from16 v16, v4

    .line 1611
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1610
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1612
    goto/16 :goto_4

    .line 1604
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_26
    move/from16 v16, v4

    .line 1606
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1605
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1607
    goto/16 :goto_4

    .line 1599
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_27
    move/from16 v16, v4

    .line 1601
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1600
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1602
    goto/16 :goto_4

    .line 1594
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_28
    move/from16 v16, v4

    .line 1596
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1595
    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1597
    goto/16 :goto_4

    .line 1589
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_29
    move/from16 v16, v4

    .line 1591
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v14

    .line 1590
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1592
    goto/16 :goto_4

    .line 1585
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2a
    move/from16 v16, v4

    .line 1586
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1587
    goto/16 :goto_4

    .line 1580
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2b
    move/from16 v16, v4

    .line 1582
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1581
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1583
    goto/16 :goto_4

    .line 1575
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2c
    move/from16 v16, v4

    .line 1577
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1576
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1578
    goto/16 :goto_4

    .line 1570
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2d
    move/from16 v16, v4

    .line 1572
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1571
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1573
    goto/16 :goto_4

    .line 1565
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2e
    move/from16 v16, v4

    .line 1567
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1566
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1568
    goto/16 :goto_4

    .line 1560
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2f
    move/from16 v16, v4

    .line 1562
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1561
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1563
    goto/16 :goto_4

    .line 1555
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_30
    move/from16 v16, v4

    .line 1557
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1556
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1558
    goto/16 :goto_4

    .line 1550
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_31
    move/from16 v16, v4

    .line 1552
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1551
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1553
    goto/16 :goto_4

    .line 1545
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_32
    move/from16 v16, v4

    .line 1547
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1546
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1548
    goto/16 :goto_4

    .line 1536
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_33
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1537
    nop

    .line 1540
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 1541
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v14

    .line 1538
    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1531
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_34
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1532
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1526
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_35
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1527
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1521
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_36
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1522
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1516
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_37
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1517
    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1511
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_38
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1512
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1506
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_39
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1507
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1500
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_3a
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1501
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 1502
    .local v4, "value":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1503
    .end local v4    # "value":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    goto/16 :goto_4

    .line 1494
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3b
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1495
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1496
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1497
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 1484
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3c
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1485
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1486
    .local v4, "value":Ljava/lang/Object;
    instance-of v14, v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v14, :cond_24

    .line 1487
    move-object v14, v4

    check-cast v14, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_3

    .line 1489
    :cond_24
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1491
    .end local v4    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_4

    .line 1479
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3d
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1480
    const/4 v4, 0x1

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1474
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_3e
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1475
    invoke-static {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1469
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_3f
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1470
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1464
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_40
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1465
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1459
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_41
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1460
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1454
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_42
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1455
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1449
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_43
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1450
    const/4 v4, 0x0

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1444
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_44
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1445
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 1419
    .end local v7    # "typeAndOffset":I
    .end local v8    # "number":I
    .end local v9    # "fieldType":I
    .end local v10    # "presenceMaskAndOffset":I
    .end local v11    # "presenceMask":I
    .end local v12    # "offset":J
    :cond_25
    :goto_4
    add-int/lit8 v6, v6, 0x3

    move/from16 v4, v16

    goto/16 :goto_0

    .line 1972
    .end local v6    # "i":I
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :cond_26
    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v6, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v2, v6

    .line 1974
    iget-boolean v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v6, :cond_27

    .line 1975
    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getSerializedSize()I

    move-result v6

    add-int/2addr v2, v6

    .line 1978
    :cond_27
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1982
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1983
    .local v2, "unsafe":Lsun/misc/Unsafe;
    const/4 v3, 0x0

    .line 1984
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1985
    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 1986
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v6

    .line 1987
    .local v6, "fieldType":I
    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 1989
    .local v7, "number":I
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 1992
    .local v8, "offset":J
    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    .line 1991
    invoke-virtual {v10}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v10

    const/4 v11, 0x0

    if-lt v6, v10, :cond_0

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    .line 1992
    invoke-virtual {v10}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v10

    if-gt v6, v10, :cond_0

    .line 1993
    iget-object v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v10, v12

    const v12, 0xfffff

    and-int/2addr v10, v12

    goto :goto_1

    .line 1994
    :cond_0
    move v10, v11

    :goto_1
    nop

    .line 1996
    .local v10, "cachedSizeOffset":I
    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    .line 2495
    :pswitch_0
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2496
    nop

    .line 2499
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 2500
    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v12

    .line 2497
    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2490
    :pswitch_1
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2491
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2485
    :pswitch_2
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2486
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2480
    :pswitch_3
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2481
    invoke-static {v7, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2475
    :pswitch_4
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2476
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2470
    :pswitch_5
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2471
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2465
    :pswitch_6
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2466
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2458
    :pswitch_7
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2459
    nop

    .line 2461
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 2460
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2452
    :pswitch_8
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2453
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2454
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2455
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 2442
    :pswitch_9
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2443
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2444
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v12, :cond_1

    .line 2445
    move-object v12, v11

    check-cast v12, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_2

    .line 2447
    :cond_1
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2449
    .end local v11    # "value":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_4

    .line 2437
    :pswitch_a
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2438
    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2432
    :pswitch_b
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2433
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2427
    :pswitch_c
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2428
    invoke-static {v7, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2422
    :pswitch_d
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2423
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2417
    :pswitch_e
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2418
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2412
    :pswitch_f
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2413
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2407
    :pswitch_10
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2408
    invoke-static {v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2402
    :pswitch_11
    invoke-direct {v0, v1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2403
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2397
    :pswitch_12
    iget-object v11, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 2399
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 2398
    invoke-interface {v11, v7, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2400
    goto/16 :goto_4

    .line 2391
    :pswitch_13
    nop

    .line 2393
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v12

    .line 2392
    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2394
    goto/16 :goto_4

    .line 2376
    :pswitch_14
    nop

    .line 2378
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2377
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2379
    .local v11, "fieldSize":I
    if-lez v11, :cond_11

    .line 2380
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2

    .line 2381
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2383
    :cond_2
    nop

    .line 2384
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2385
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2360
    .end local v11    # "fieldSize":I
    :pswitch_15
    nop

    .line 2362
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2361
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2363
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2364
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_3

    .line 2365
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2367
    :cond_3
    nop

    .line 2368
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2369
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2344
    .end local v11    # "fieldSize":I
    :pswitch_16
    nop

    .line 2346
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2345
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2347
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2348
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_4

    .line 2349
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2351
    :cond_4
    nop

    .line 2352
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2353
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2328
    .end local v11    # "fieldSize":I
    :pswitch_17
    nop

    .line 2330
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2329
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2331
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2332
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_5

    .line 2333
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2335
    :cond_5
    nop

    .line 2336
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2337
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2312
    .end local v11    # "fieldSize":I
    :pswitch_18
    nop

    .line 2314
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2313
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2315
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2316
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_6

    .line 2317
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2319
    :cond_6
    nop

    .line 2320
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2321
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2296
    .end local v11    # "fieldSize":I
    :pswitch_19
    nop

    .line 2298
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2297
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2299
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2300
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_7

    .line 2301
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2303
    :cond_7
    nop

    .line 2304
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2305
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2280
    .end local v11    # "fieldSize":I
    :pswitch_1a
    nop

    .line 2282
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2281
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2283
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2284
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_8

    .line 2285
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2287
    :cond_8
    nop

    .line 2288
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2289
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2264
    .end local v11    # "fieldSize":I
    :pswitch_1b
    nop

    .line 2266
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2265
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2267
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2268
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_9

    .line 2269
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2271
    :cond_9
    nop

    .line 2272
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2273
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2248
    .end local v11    # "fieldSize":I
    :pswitch_1c
    nop

    .line 2250
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2249
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2251
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2252
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_a

    .line 2253
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2255
    :cond_a
    nop

    .line 2256
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2257
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2232
    .end local v11    # "fieldSize":I
    :pswitch_1d
    nop

    .line 2234
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2233
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2235
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2236
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_b

    .line 2237
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2239
    :cond_b
    nop

    .line 2240
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2241
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2216
    .end local v11    # "fieldSize":I
    :pswitch_1e
    nop

    .line 2218
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2217
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2219
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2220
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_c

    .line 2221
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2223
    :cond_c
    nop

    .line 2224
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2225
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2200
    .end local v11    # "fieldSize":I
    :pswitch_1f
    nop

    .line 2202
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2201
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2203
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2204
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_d

    .line 2205
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2207
    :cond_d
    nop

    .line 2208
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2209
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2184
    .end local v11    # "fieldSize":I
    :pswitch_20
    nop

    .line 2186
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2185
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2187
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2188
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_e

    .line 2189
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2191
    :cond_e
    nop

    .line 2192
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2193
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2168
    .end local v11    # "fieldSize":I
    :pswitch_21
    nop

    .line 2170
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2169
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2171
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2172
    iget-boolean v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_f

    .line 2173
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2175
    :cond_f
    nop

    .line 2176
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2177
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2163
    .end local v11    # "fieldSize":I
    :pswitch_22
    nop

    .line 2164
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2165
    goto/16 :goto_4

    .line 2158
    :pswitch_23
    nop

    .line 2160
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2159
    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2161
    goto/16 :goto_4

    .line 2155
    :pswitch_24
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2156
    goto/16 :goto_4

    .line 2152
    :pswitch_25
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2153
    goto/16 :goto_4

    .line 2147
    :pswitch_26
    nop

    .line 2149
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2148
    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2150
    goto/16 :goto_4

    .line 2142
    :pswitch_27
    nop

    .line 2144
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2143
    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2145
    goto/16 :goto_4

    .line 2137
    :pswitch_28
    nop

    .line 2139
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    .line 2138
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2140
    goto/16 :goto_4

    .line 2132
    :pswitch_29
    nop

    .line 2134
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v12

    .line 2133
    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2135
    goto/16 :goto_4

    .line 2129
    :pswitch_2a
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2130
    goto/16 :goto_4

    .line 2126
    :pswitch_2b
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2127
    goto/16 :goto_4

    .line 2123
    :pswitch_2c
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2124
    goto/16 :goto_4

    .line 2120
    :pswitch_2d
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2121
    goto/16 :goto_4

    .line 2115
    :pswitch_2e
    nop

    .line 2117
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2116
    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2118
    goto/16 :goto_4

    .line 2111
    :pswitch_2f
    nop

    .line 2112
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2113
    goto/16 :goto_4

    .line 2107
    :pswitch_30
    nop

    .line 2108
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2109
    goto/16 :goto_4

    .line 2104
    :pswitch_31
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2105
    goto/16 :goto_4

    .line 2101
    :pswitch_32
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2102
    goto/16 :goto_4

    .line 2092
    :pswitch_33
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2093
    nop

    .line 2096
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 2097
    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v12

    .line 2094
    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2086
    :pswitch_34
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2087
    nop

    .line 2088
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2081
    :pswitch_35
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2082
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2076
    :pswitch_36
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2077
    invoke-static {v7, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2071
    :pswitch_37
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2072
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2066
    :pswitch_38
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2067
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2061
    :pswitch_39
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2062
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2055
    :pswitch_3a
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2056
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 2057
    .local v11, "value":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2058
    .end local v11    # "value":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    goto/16 :goto_4

    .line 2049
    :pswitch_3b
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2050
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2051
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2052
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 2039
    :pswitch_3c
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2040
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2041
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v12, :cond_10

    .line 2042
    move-object v12, v11

    check-cast v12, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_3

    .line 2044
    :cond_10
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2046
    .end local v11    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_4

    .line 2034
    :pswitch_3d
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2035
    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2029
    :pswitch_3e
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2030
    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2024
    :pswitch_3f
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2025
    invoke-static {v7, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2019
    :pswitch_40
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2020
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2013
    :pswitch_41
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2014
    nop

    .line 2015
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2008
    :pswitch_42
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2009
    invoke-static {v1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2003
    :pswitch_43
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2004
    invoke-static {v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 1998
    :pswitch_44
    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1999
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    .line 1984
    .end local v5    # "typeAndOffset":I
    .end local v6    # "fieldType":I
    .end local v7    # "number":I
    .end local v8    # "offset":J
    .end local v10    # "cachedSizeOffset":I
    :cond_11
    :goto_4
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    .line 2508
    .end local v4    # "i":I
    :cond_12
    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2510
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private getUnknownFieldsSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2515
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2516
    .local v0, "unknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5711
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 5695
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .locals 10
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5756
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 5757
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 5758
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 5759
    .local v3, "offset":J
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v5

    const-wide/16 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 5804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5802
    :pswitch_0
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 5800
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 5798
    :pswitch_2
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 5796
    :pswitch_3
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 5794
    :pswitch_4
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 5792
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 5790
    :pswitch_6
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 5788
    :pswitch_7
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 5786
    :pswitch_8
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 5777
    :pswitch_9
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5778
    .local v1, "value":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 5779
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 5780
    :cond_8
    instance-of v5, v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v5, :cond_9

    .line 5781
    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 5783
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 5775
    .end local v1    # "value":Ljava/lang/Object;
    :pswitch_a
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    return v1

    .line 5773
    :pswitch_b
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_a

    move v1, v2

    :cond_a
    return v1

    .line 5771
    :pswitch_c
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 5769
    :pswitch_d
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_c

    move v1, v2

    :cond_c
    return v1

    .line 5767
    :pswitch_e
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 5765
    :pswitch_f
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_e

    move v1, v2

    :cond_e
    return v1

    .line 5763
    :pswitch_10
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 5761
    :pswitch_11
    invoke-static {p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_10

    move v1, v2

    :cond_10
    return v1

    .line 5807
    .end local v0    # "typeAndOffset":I
    .end local v3    # "offset":J
    :cond_11
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5808
    .local v0, "presenceMaskAndOffset":I
    ushr-int/lit8 v3, v0, 0x14

    shl-int v3, v2, v3

    .line 5809
    .local v3, "presenceMask":I
    const v4, 0xfffff

    and-int/2addr v4, v0

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_12

    move v1, v2

    :cond_12
    return v1

    :pswitch_data_0
    .packed-switch 0x0
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

.method private isFieldPresent(Ljava/lang/Object;III)Z
    .locals 1
    .param p2, "pos"    # I
    .param p3, "presenceField"    # I
    .param p4, "presenceMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 5748
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    .line 5749
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 5751
    :cond_0
    and-int v0, p3, p4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Schema;)Z
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "typeAndOffset"    # I
    .param p2, "schema"    # Lcom/google/crypto/tink/shaded/protobuf/Schema;

    .line 5575
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 5576
    .local v0, "nested":Ljava/lang/Object;
    invoke-interface {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 5581
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5582
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TN;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5583
    return v2

    .line 5586
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    .line 5587
    .local v1, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5588
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5589
    .local v4, "nested":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5590
    const/4 v2, 0x0

    return v2

    .line 5587
    .end local v4    # "nested":Ljava/lang/Object;, "TN;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5593
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .locals 9
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5597
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 5598
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5599
    return v2

    .line 5601
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    .line 5602
    .local v1, "mapDefaultEntry":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    .line 5603
    .local v3, "metadata":Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;, "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<**>;"
    iget-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    if-eq v4, v5, :cond_1

    .line 5604
    return v2

    .line 5607
    :cond_1
    const/4 v4, 0x0

    .line 5608
    .local v4, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5609
    .local v6, "nested":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 5610
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    .line 5612
    :cond_2
    invoke-interface {v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5613
    const/4 v2, 0x0

    return v2

    .line 5615
    .end local v6    # "nested":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 5616
    :cond_4
    return v2
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 5
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5833
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5834
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v1, v0

    int-to-long v3, v1

    .line 5835
    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5834
    :goto_0
    return v1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .locals 3
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5828
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5829
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isRequired(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 5691
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2520
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5715
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 18
    .param p4, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3858
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "extensionSchema":Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;, "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v1, 0x0

    .line 3859
    .local v1, "unknownFields":Ljava/lang/Object;, "TUB;"
    const/4 v2, 0x0

    move-object v13, v1

    move-object v14, v2

    .line 3862
    .end local v1    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v13, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v14, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->getFieldNumber()I

    move-result v1

    move v15, v1

    .line 3863
    .local v15, "number":I
    invoke-direct {v8, v15}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v7, v1

    .line 3864
    .local v7, "pos":I
    if-gez v7, :cond_b

    .line 3865
    const v1, 0x7fffffff

    if-ne v15, v1, :cond_2

    .line 4322
    iget v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v1, "i":I
    :goto_1
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_0

    .line 4323
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4324
    invoke-direct {v8, v10, v2, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4326
    .end local v1    # "i":I
    :cond_0
    if-eqz v13, :cond_1

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3866
    :cond_1
    return-void

    .line 3870
    :cond_2
    :try_start_1
    iget-boolean v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v1, :cond_3

    .line 3871
    const/4 v1, 0x0

    move-object/from16 v6, p2

    goto :goto_2

    .line 3872
    :cond_3
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-object/from16 v6, p2

    invoke-virtual {v6, v12, v1, v15}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    move-object/from16 v16, v1

    .line 3874
    .local v16, "extension":Ljava/lang/Object;
    if-eqz v16, :cond_5

    .line 3875
    if-nez v14, :cond_4

    .line 3876
    :try_start_2
    invoke-virtual/range {p2 .. p3}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v1

    .end local v14    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    .local v1, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    goto :goto_3

    .line 4322
    .end local v1    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    .end local v7    # "pos":I
    .end local v15    # "number":I
    .end local v16    # "extension":Ljava/lang/Object;
    .restart local v14    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    .line 3878
    .restart local v7    # "pos":I
    .restart local v15    # "number":I
    .restart local v16    # "extension":Ljava/lang/Object;
    :cond_4
    :goto_3
    nop

    .line 3879
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .local v17, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    move-object/from16 v7, p1

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->parseExtension(Lcom/google/crypto/tink/shaded/protobuf/Reader;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 3886
    move-object/from16 v14, v17

    goto :goto_0

    .line 3888
    .end local v17    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    .restart local v7    # "pos":I
    .local v14, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    :cond_5
    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    invoke-virtual {v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3889
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->skipField()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3890
    move-object/from16 v14, v17

    goto :goto_0

    .line 3893
    :cond_6
    if-nez v13, :cond_7

    .line 3894
    invoke-virtual {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 3897
    :cond_7
    invoke-virtual {v9, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    .line 3898
    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 4322
    :cond_8
    iget v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v1, "i":I
    :goto_4
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_9

    .line 4323
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4324
    invoke-direct {v8, v10, v2, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4322
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4326
    .end local v1    # "i":I
    :cond_9
    if-eqz v13, :cond_a

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3902
    :cond_a
    return-void

    .line 3904
    .end local v16    # "extension":Ljava/lang/Object;
    .end local v17    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    .restart local v7    # "pos":I
    .local v14, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    :cond_b
    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    :try_start_4
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v7, v1

    .line 3907
    .local v7, "typeAndOffset":I
    :try_start_5
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v1
    :try_end_5
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch v1, :pswitch_data_0

    .line 4296
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    if-nez v13, :cond_13

    .line 4297
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_8

    .line 4288
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_0
    nop

    .line 4290
    :try_start_7
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4291
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4288
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4292
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4293
    move v1, v7

    goto/16 :goto_a

    .line 4283
    :pswitch_1
    nop

    .line 4284
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4283
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4285
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4286
    move v1, v7

    goto/16 :goto_a

    .line 4278
    :pswitch_2
    nop

    .line 4279
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4278
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4280
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4281
    move v1, v7

    goto/16 :goto_a

    .line 4273
    :pswitch_3
    nop

    .line 4274
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4273
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4275
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4276
    move v1, v7

    goto/16 :goto_a

    .line 4268
    :pswitch_4
    nop

    .line 4269
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4268
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4270
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4271
    move v1, v7

    goto/16 :goto_a

    .line 4255
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readEnum()I

    move-result v1

    .line 4256
    .local v1, "enumValue":I
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4257
    .local v2, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    if-eqz v2, :cond_d

    invoke-interface {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    .line 4261
    :cond_c
    nop

    .line 4262
    invoke-static {v15, v1, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4265
    move v1, v7

    goto/16 :goto_a

    .line 4258
    :cond_d
    :goto_5
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4259
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_a

    .line 4249
    .end local v1    # "enumValue":I
    .end local v2    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    :pswitch_6
    nop

    .line 4250
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4249
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4251
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4252
    move v1, v7

    goto/16 :goto_a

    .line 4245
    :pswitch_7
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4246
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4247
    move v1, v7

    goto/16 :goto_a

    .line 4227
    :pswitch_8
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4228
    nop

    .line 4230
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 4232
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 4231
    invoke-interface {v11, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4229
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4233
    .local v1, "mergedResult":Ljava/lang/Object;
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4234
    .end local v1    # "mergedResult":Ljava/lang/Object;
    goto :goto_6

    .line 4235
    :cond_e
    nop

    .line 4237
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4239
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    .line 4238
    invoke-interface {v11, v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4235
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4240
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4242
    :goto_6
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4243
    move v1, v7

    goto/16 :goto_a

    .line 4223
    :pswitch_9
    invoke-direct {v8, v10, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V

    .line 4224
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4225
    move v1, v7

    goto/16 :goto_a

    .line 4218
    :pswitch_a
    nop

    .line 4219
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4218
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4220
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4221
    move v1, v7

    goto/16 :goto_a

    .line 4213
    :pswitch_b
    nop

    .line 4214
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4213
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4215
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4216
    move v1, v7

    goto/16 :goto_a

    .line 4208
    :pswitch_c
    nop

    .line 4209
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4208
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4210
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4211
    move v1, v7

    goto/16 :goto_a

    .line 4203
    :pswitch_d
    nop

    .line 4204
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4203
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4205
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4206
    move v1, v7

    goto/16 :goto_a

    .line 4198
    :pswitch_e
    nop

    .line 4199
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4198
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4200
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4201
    move v1, v7

    goto/16 :goto_a

    .line 4193
    :pswitch_f
    nop

    .line 4194
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4193
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4195
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4196
    move v1, v7

    goto/16 :goto_a

    .line 4188
    :pswitch_10
    nop

    .line 4189
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 4188
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4190
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4191
    move v1, v7

    goto/16 :goto_a

    .line 4183
    :pswitch_11
    nop

    .line 4184
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 4183
    invoke-static {v10, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4185
    invoke-direct {v8, v10, v15, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4186
    move v1, v7

    goto/16 :goto_a

    .line 4180
    :pswitch_12
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v14

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/Reader;)V
    :try_end_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4181
    move v1, v7

    goto/16 :goto_a

    .line 4304
    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_b

    .line 4171
    :pswitch_13
    nop

    .line 4173
    :try_start_8
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 4175
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v6
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4171
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .local v16, "typeAndOffset":I
    move-object/from16 v7, p5

    :try_start_9
    invoke-direct/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 4177
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4304
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :catch_1
    move-exception v0

    move-object v2, v0

    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    goto/16 :goto_b

    .line 4166
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_14
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4167
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4166
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4168
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4162
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_15
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4163
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4162
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4164
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4158
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_16
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4159
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4158
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4160
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4154
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_17
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4155
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4154
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 4156
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4141
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_18
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4142
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4143
    .local v1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4144
    nop

    .line 4148
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4145
    invoke-static {v15, v1, v2, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 4151
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4136
    .end local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_19
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4137
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4136
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4138
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4132
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1a
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4133
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4132
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4134
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4128
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1b
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4129
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4128
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4130
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4124
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1c
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4125
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4124
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4126
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4120
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1d
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4121
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4120
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4122
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4116
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1e
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4117
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4116
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4118
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4112
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1f
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4113
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4112
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4114
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4108
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_20
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4109
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4108
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4110
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4104
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_21
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4105
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4104
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4106
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4100
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_22
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4101
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4100
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4102
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4096
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_23
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4097
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4096
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4098
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4092
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_24
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4093
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4092
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4094
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4088
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_25
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4089
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4088
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 4090
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4075
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_26
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4076
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4077
    .restart local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4078
    nop

    .line 4082
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4079
    invoke-static {v15, v1, v2, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 4085
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4070
    .end local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_27
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4071
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4070
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4072
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4066
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_28
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4067
    invoke-static/range {v16 .. v16}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4066
    invoke-interface {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    .line 4068
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4057
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_29
    move/from16 v16, v7

    .line 4061
    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    .line 4057
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    :try_end_9
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4063
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4304
    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v1, v16

    goto/16 :goto_b

    .line 4053
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2a
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    move/from16 v1, v16

    .end local v16    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    :try_start_a
    invoke-direct {v8, v10, v1, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V

    .line 4054
    goto/16 :goto_a

    .line 4049
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2b
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4050
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4049
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4051
    goto/16 :goto_a

    .line 4045
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2c
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4046
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4045
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4047
    goto/16 :goto_a

    .line 4041
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2d
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4042
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4041
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4043
    goto/16 :goto_a

    .line 4037
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2e
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4038
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4037
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4039
    goto/16 :goto_a

    .line 4033
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2f
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4034
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4033
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4035
    goto/16 :goto_a

    .line 4029
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_30
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4030
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4029
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4031
    goto/16 :goto_a

    .line 4025
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_31
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4026
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4025
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4027
    goto/16 :goto_a

    .line 4021
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_32
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 4022
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4021
    invoke-interface {v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4023
    goto/16 :goto_a

    .line 4003
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_33
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4004
    nop

    .line 4006
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4008
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    .line 4007
    invoke-interface {v11, v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4005
    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4009
    .local v2, "mergedResult":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4010
    .end local v2    # "mergedResult":Ljava/lang/Object;
    goto/16 :goto_a

    .line 4011
    :cond_f
    nop

    .line 4013
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 4015
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    .line 4014
    invoke-interface {v11, v4, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 4011
    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4016
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4018
    goto/16 :goto_a

    .line 3998
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_34
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3999
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4000
    goto/16 :goto_a

    .line 3994
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_35
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3995
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3996
    goto/16 :goto_a

    .line 3990
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_36
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3991
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3992
    goto/16 :goto_a

    .line 3986
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_37
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3987
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3988
    goto/16 :goto_a

    .line 3973
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_38
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readEnum()I

    move-result v2

    .line 3974
    .local v2, "enumValue":I
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 3975
    .local v3, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    if-eqz v3, :cond_11

    invoke-interface {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_7

    .line 3979
    :cond_10
    nop

    .line 3980
    invoke-static {v15, v2, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    .line 3983
    goto/16 :goto_a

    .line 3976
    :cond_11
    :goto_7
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3977
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_a

    .line 3968
    .end local v1    # "typeAndOffset":I
    .end local v2    # "enumValue":I
    .end local v3    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .restart local v7    # "typeAndOffset":I
    :pswitch_39
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3969
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3970
    goto/16 :goto_a

    .line 3964
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3a
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3965
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3966
    goto/16 :goto_a

    .line 3946
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3b
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3947
    nop

    .line 3949
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3951
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    .line 3950
    invoke-interface {v11, v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 3948
    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3952
    .local v2, "mergedResult":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3953
    .end local v2    # "mergedResult":Ljava/lang/Object;
    goto/16 :goto_a

    .line 3954
    :cond_12
    nop

    .line 3956
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 3958
    invoke-direct {v8, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    .line 3957
    invoke-interface {v11, v4, v12}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 3954
    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3959
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3961
    goto/16 :goto_a

    .line 3941
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3c
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v1, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V

    .line 3942
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3943
    goto/16 :goto_a

    .line 3937
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3d
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3938
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3939
    goto/16 :goto_a

    .line 3933
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3e
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3934
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3935
    goto/16 :goto_a

    .line 3929
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3f
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3930
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3931
    goto/16 :goto_a

    .line 3925
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_40
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3926
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3927
    goto :goto_a

    .line 3921
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_41
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3922
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3923
    goto :goto_a

    .line 3917
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_42
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3918
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3919
    goto :goto_a

    .line 3913
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_43
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3914
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3915
    goto :goto_a

    .line 3909
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_44
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3910
    invoke-direct {v8, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3911
    goto :goto_a

    .line 4304
    :catch_3
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 4297
    :goto_8
    move-object v13, v2

    .line 4299
    :cond_13
    invoke-virtual {v9, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v2
    :try_end_a
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v2, :cond_16

    .line 4322
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v2, "i":I
    :goto_9
    iget v3, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_14

    .line 4323
    iget-object v3, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4324
    invoke-direct {v8, v10, v3, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4322
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4326
    .end local v2    # "i":I
    :cond_14
    if-eqz v13, :cond_15

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4300
    :cond_15
    return-void

    .line 4319
    :cond_16
    :goto_a
    goto :goto_e

    .line 4304
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :catch_4
    move-exception v0

    move v1, v7

    move-object v2, v0

    .line 4307
    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    .local v2, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_b
    :try_start_b
    invoke-virtual {v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4308
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->skipField()Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v3, :cond_1d

    .line 4322
    iget v3, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v3, "i":I
    :goto_c
    iget v4, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_17

    .line 4323
    iget-object v4, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    .line 4324
    invoke-direct {v8, v10, v4, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4322
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4326
    .end local v3    # "i":I
    :cond_17
    if-eqz v13, :cond_18

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4309
    :cond_18
    return-void

    .line 4312
    :cond_19
    if-nez v13, :cond_1a

    .line 4313
    :try_start_c
    invoke-virtual {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4315
    :cond_1a
    invoke-virtual {v9, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v3, :cond_1d

    .line 4322
    iget v3, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .restart local v3    # "i":I
    :goto_d
    iget v4, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_1b

    .line 4323
    iget-object v4, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    .line 4324
    invoke-direct {v8, v10, v4, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4322
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4326
    .end local v3    # "i":I
    :cond_1b
    if-eqz v13, :cond_1c

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4316
    :cond_1c
    return-void

    .line 4320
    .end local v1    # "typeAndOffset":I
    .end local v2    # "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v14    # "pos":I
    .end local v15    # "number":I
    :cond_1d
    :goto_e
    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 4322
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v14, v17

    goto :goto_f

    .end local v17    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    .local v14, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<TET;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v17, v14

    move-object v1, v0

    :goto_f
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v2, "i":I
    :goto_10
    iget v3, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_1e

    .line 4323
    iget-object v3, v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4324
    invoke-direct {v8, v10, v3, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4322
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4326
    .end local v2    # "i":I
    :cond_1e
    if-eqz v13, :cond_1f

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4329
    :cond_1f
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/Reader;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .param p5, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5429
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5430
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5435
    .local v2, "mapField":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 5436
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v3, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5437
    invoke-static {p1, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5438
    :cond_0
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5439
    move-object v3, v2

    .line 5440
    .local v3, "oldMapField":Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5441
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v4, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5442
    invoke-static {p1, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5444
    .end local v3    # "oldMapField":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 5445
    invoke-interface {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 5446
    invoke-interface {v4, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    .line 5444
    invoke-interface {p5, v3, v4, p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 5448
    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1367
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1368
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1370
    .local v1, "offset":J
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1371
    return-void

    .line 1374
    :cond_0
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1375
    .local v3, "mine":Ljava/lang/Object;
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1376
    .local v4, "theirs":Ljava/lang/Object;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1377
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1378
    .local v5, "merged":Ljava/lang/Object;
    invoke-static {p1, v1, v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1379
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .end local v5    # "merged":Ljava/lang/Object;
    goto :goto_0

    .line 1380
    :cond_1
    if-eqz v4, :cond_2

    .line 1381
    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1382
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1380
    :cond_2
    :goto_0
    nop

    .line 1384
    :goto_1
    return-void
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 7
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1387
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1388
    .local v0, "typeAndOffset":I
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    .line 1389
    .local v1, "number":I
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 1391
    .local v2, "offset":J
    invoke-direct {p0, p2, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1392
    return-void

    .line 1395
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1396
    .local v4, "mine":Ljava/lang/Object;
    invoke-static {p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1397
    .local v5, "theirs":Ljava/lang/Object;
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 1398
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1399
    .local v6, "merged":Ljava/lang/Object;
    invoke-static {p1, v2, v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1400
    invoke-direct {p0, p1, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .end local v6    # "merged":Ljava/lang/Object;
    goto :goto_0

    .line 1401
    :cond_1
    if-eqz v5, :cond_2

    .line 1402
    invoke-static {p1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1403
    invoke-direct {p0, p1, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_1

    .line 1401
    :cond_2
    :goto_0
    nop

    .line 1405
    :goto_1
    return-void
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1184
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1185
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1186
    .local v1, "offset":J
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1188
    .local v3, "number":I
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 1359
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1360
    goto/16 :goto_0

    .line 1353
    :pswitch_1
    invoke-direct {p0, p2, v3, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1354
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1355
    invoke-direct {p0, p1, v3, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 1344
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1345
    goto/16 :goto_0

    .line 1337
    :pswitch_3
    invoke-direct {p0, p2, v3, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1338
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1339
    invoke-direct {p0, p1, v3, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 1326
    :pswitch_4
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-static {v4, p1, p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->mergeMap(Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1327
    goto/16 :goto_0

    .line 1323
    :pswitch_5
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    invoke-virtual {v4, p1, p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1324
    goto/16 :goto_0

    .line 1289
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1290
    goto/16 :goto_0

    .line 1283
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1284
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1285
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1277
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1278
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1279
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1271
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1272
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1273
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1265
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1266
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1267
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1259
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1260
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1261
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1253
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1254
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1255
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1247
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1248
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1249
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1244
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1245
    goto/16 :goto_0

    .line 1238
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1239
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1240
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1232
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1233
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1234
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1226
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1227
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1228
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1220
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1221
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1222
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1214
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1215
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1216
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1208
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1209
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1210
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1202
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1203
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1204
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1196
    :pswitch_16
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1197
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1198
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1190
    :pswitch_17
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1191
    invoke-static {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1192
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1364
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
    .locals 7
    .param p1, "messageInfo"    # Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .param p2, "newInstanceSchema"    # Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .param p3, "listFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .param p6, "mapFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;",
            "Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 220
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<**>;"
    .local p5, "extensionSchema":Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;, "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<*>;"
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;

    if-eqz v0, :cond_0

    .line 221
    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object v0

    return-object v0
.end method

.method static newSchemaForMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
    .locals 33
    .param p0, "messageInfo"    # Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;
    .param p1, "newInstanceSchema"    # Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;",
            "Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 619
    .local p3, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;, "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO3:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 620
    .local v0, "isProto3":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->getFields()[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    move-result-object v1

    .line 623
    .local v1, "fis":[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    array-length v4, v1

    if-nez v4, :cond_1

    .line 624
    const/4 v3, 0x0

    .line 625
    .local v3, "minFieldNumber":I
    const/4 v4, 0x0

    move/from16 v20, v4

    .local v4, "maxFieldNumber":I
    goto :goto_1

    .line 627
    .end local v3    # "minFieldNumber":I
    .end local v4    # "maxFieldNumber":I
    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getFieldNumber()I

    move-result v4

    .line 628
    .local v4, "minFieldNumber":I
    array-length v5, v1

    sub-int/2addr v5, v3

    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    move/from16 v20, v3

    move v3, v4

    .line 631
    .end local v4    # "minFieldNumber":I
    .restart local v3    # "minFieldNumber":I
    .local v20, "maxFieldNumber":I
    :goto_1
    array-length v15, v1

    .line 633
    .local v15, "numEntries":I
    mul-int/lit8 v4, v15, 0x3

    new-array v14, v4, [I

    .line 634
    .local v14, "buffer":[I
    mul-int/lit8 v4, v15, 0x2

    new-array v13, v4, [Ljava/lang/Object;

    .line 636
    .local v13, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 637
    .local v4, "mapFieldCount":I
    const/4 v5, 0x0

    .line 638
    .local v5, "repeatedFieldCount":I
    array-length v6, v1

    move v7, v2

    :goto_2
    const/16 v8, 0x31

    const/16 v9, 0x12

    if-ge v7, v6, :cond_4

    aget-object v10, v1, v7

    .line 639
    .local v10, "fi":Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    invoke-virtual {v10}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->MAP:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    if-ne v11, v12, :cond_2

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 641
    :cond_2
    invoke-virtual {v10}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v11

    if-lt v11, v9, :cond_3

    invoke-virtual {v10}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v9

    if-gt v9, v8, :cond_3

    .line 644
    add-int/lit8 v5, v5, 0x1

    .line 638
    .end local v10    # "fi":Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 647
    :cond_4
    const/4 v6, 0x0

    if-lez v4, :cond_5

    new-array v7, v4, [I

    goto :goto_4

    :cond_5
    move-object v7, v6

    .line 648
    .local v7, "mapFieldPositions":[I
    :goto_4
    if-lez v5, :cond_6

    new-array v6, v5, [I

    .line 649
    .local v6, "repeatedFieldOffsets":[I
    :cond_6
    const/4 v4, 0x0

    .line 650
    const/4 v5, 0x0

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v10

    .line 653
    .local v10, "checkInitialized":[I
    if-nez v10, :cond_7

    .line 654
    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v12, v10

    goto :goto_5

    .line 653
    :cond_7
    move-object v12, v10

    .line 656
    .end local v10    # "checkInitialized":[I
    .local v12, "checkInitialized":[I
    :goto_5
    const/4 v10, 0x0

    .line 658
    .local v10, "checkInitializedIndex":I
    const/4 v11, 0x0

    .line 659
    .local v11, "fieldIndex":I
    const/16 v16, 0x0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v4, v16

    move/from16 v32, v11

    move v11, v10

    move/from16 v10, v32

    .end local v5    # "repeatedFieldCount":I
    .local v4, "bufferIndex":I
    .local v10, "fieldIndex":I
    .local v11, "checkInitializedIndex":I
    .local v21, "mapFieldCount":I
    .local v22, "repeatedFieldCount":I
    :goto_6
    array-length v5, v1

    if-ge v10, v5, :cond_b

    .line 660
    aget-object v5, v1, v10

    .line 661
    .local v5, "fi":Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    .line 665
    .local v2, "fieldNumber":I
    invoke-static {v5, v14, v4, v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->storeFieldData(Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V

    .line 668
    array-length v8, v12

    if-ge v11, v8, :cond_8

    aget v8, v12, v11

    if-ne v8, v2, :cond_8

    .line 670
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "checkInitializedIndex":I
    .local v8, "checkInitializedIndex":I
    aput v4, v12, v11

    move v11, v8

    .line 673
    .end local v8    # "checkInitializedIndex":I
    .restart local v11    # "checkInitializedIndex":I
    :cond_8
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v8

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->MAP:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    if-ne v8, v9, :cond_9

    .line 674
    add-int/lit8 v8, v21, 0x1

    .end local v21    # "mapFieldCount":I
    .local v8, "mapFieldCount":I
    aput v4, v7, v21

    move/from16 v21, v8

    move/from16 v19, v10

    goto :goto_7

    .line 675
    .end local v8    # "mapFieldCount":I
    .restart local v21    # "mapFieldCount":I
    :cond_9
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x12

    if-lt v8, v9, :cond_a

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x31

    if-gt v8, v9, :cond_a

    .line 678
    add-int/lit8 v8, v22, 0x1

    .line 679
    .end local v22    # "repeatedFieldCount":I
    .local v8, "repeatedFieldCount":I
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v17

    move/from16 v19, v10

    .end local v10    # "fieldIndex":I
    .local v19, "fieldIndex":I
    invoke-static/range {v17 .. v17}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    aput v9, v6, v22

    move/from16 v22, v8

    goto :goto_7

    .line 675
    .end local v8    # "repeatedFieldCount":I
    .end local v19    # "fieldIndex":I
    .restart local v10    # "fieldIndex":I
    .restart local v22    # "repeatedFieldCount":I
    :cond_a
    move/from16 v19, v10

    .line 682
    .end local v10    # "fieldIndex":I
    .restart local v19    # "fieldIndex":I
    :goto_7
    nop

    .end local v2    # "fieldNumber":I
    .end local v5    # "fi":Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    add-int/lit8 v10, v19, 0x1

    .line 659
    .end local v19    # "fieldIndex":I
    .restart local v10    # "fieldIndex":I
    add-int/lit8 v4, v4, 0x3

    const/4 v2, 0x0

    const/16 v8, 0x31

    const/16 v9, 0x12

    goto :goto_6

    :cond_b
    move/from16 v19, v10

    .line 685
    .end local v4    # "bufferIndex":I
    .end local v10    # "fieldIndex":I
    .restart local v19    # "fieldIndex":I
    if-nez v7, :cond_c

    .line 686
    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v2, v7

    goto :goto_8

    .line 685
    :cond_c
    move-object v2, v7

    .line 688
    .end local v7    # "mapFieldPositions":[I
    .local v2, "mapFieldPositions":[I
    :goto_8
    if-nez v6, :cond_d

    .line 689
    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v10, v6

    goto :goto_9

    .line 688
    :cond_d
    move-object v10, v6

    .line 691
    .end local v6    # "repeatedFieldOffsets":[I
    .local v10, "repeatedFieldOffsets":[I
    :goto_9
    array-length v4, v12

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v10

    add-int/2addr v4, v5

    new-array v9, v4, [I

    .line 693
    .local v9, "combined":[I
    array-length v4, v12

    const/4 v5, 0x0

    invoke-static {v12, v5, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    array-length v4, v12

    array-length v6, v2

    invoke-static {v2, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    array-length v4, v12

    array-length v6, v2

    add-int/2addr v4, v6

    array-length v6, v10

    invoke-static {v10, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    new-instance v23, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v16

    const/16 v17, 0x1

    array-length v8, v12

    array-length v4, v12

    array-length v5, v2

    add-int v18, v4, v5

    move-object/from16 v4, v23

    move-object v5, v14

    move-object v6, v13

    move v7, v3

    move/from16 v24, v8

    move/from16 v8, v20

    move-object/from16 v25, v9

    .end local v9    # "combined":[I
    .local v25, "combined":[I
    move-object/from16 v9, v16

    move-object/from16 v27, v10

    move/from16 v26, v19

    .end local v10    # "repeatedFieldOffsets":[I
    .end local v19    # "fieldIndex":I
    .local v26, "fieldIndex":I
    .local v27, "repeatedFieldOffsets":[I
    move v10, v0

    move/from16 v28, v11

    .end local v11    # "checkInitializedIndex":I
    .local v28, "checkInitializedIndex":I
    move/from16 v11, v17

    move-object/from16 v29, v12

    .end local v12    # "checkInitialized":[I
    .local v29, "checkInitialized":[I
    move-object/from16 v12, v25

    move-object/from16 v30, v13

    .end local v13    # "objects":[Ljava/lang/Object;
    .local v30, "objects":[Ljava/lang/Object;
    move/from16 v13, v24

    move-object/from16 v24, v14

    .end local v14    # "buffer":[I
    .local v24, "buffer":[I
    move/from16 v14, v18

    move/from16 v31, v15

    .end local v15    # "numEntries":I
    .local v31, "numEntries":I
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/MessageLite;ZZ[IIILcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)V

    .line 703
    return-object v23
.end method

.method static newSchemaForRawMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
    .locals 43
    .param p0, "messageInfo"    # Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;
    .param p1, "newInstanceSchema"    # Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;",
            "Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 247
    .local p3, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;, "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO3:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 249
    .local v10, "isProto3":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 251
    .local v1, "length":I
    const/4 v4, 0x0

    .line 253
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 254
    .local v4, "next":I
    const v6, 0xd800

    if-lt v4, v6, :cond_2

    .line 255
    and-int/lit16 v7, v4, 0x1fff

    .line 256
    .local v7, "result":I
    const/16 v8, 0xd

    .line 257
    .local v8, "shift":I
    :goto_1
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_1

    .line 258
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 259
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_1

    .line 261
    :cond_1
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 263
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_2
    move/from16 v20, v4

    .line 265
    .local v20, "flags":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 266
    if-lt v4, v6, :cond_4

    .line 267
    and-int/lit16 v5, v4, 0x1fff

    .line 268
    .local v5, "result":I
    const/16 v8, 0xd

    .line 269
    .restart local v8    # "shift":I
    :goto_2
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_3

    .line 270
    and-int/lit16 v7, v4, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    .line 271
    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_2

    .line 273
    :cond_3
    shl-int v7, v4, v8

    or-int v4, v5, v7

    move v7, v9

    .line 275
    .end local v5    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :cond_4
    move/from16 v21, v4

    .line 287
    .local v21, "fieldCount":I
    if-nez v21, :cond_5

    .line 288
    const/4 v5, 0x0

    .line 289
    .local v5, "oneofCount":I
    const/4 v8, 0x0

    .line 290
    .local v8, "hasBitsCount":I
    const/4 v9, 0x0

    .line 291
    .local v9, "minFieldNumber":I
    const/4 v11, 0x0

    .line 292
    .local v11, "maxFieldNumber":I
    const/4 v12, 0x0

    .line 293
    .local v12, "numEntries":I
    const/4 v13, 0x0

    .line 294
    .local v13, "mapFieldCount":I
    const/4 v14, 0x0

    .line 295
    .local v14, "repeatedFieldCount":I
    const/4 v15, 0x0

    .line 296
    .local v15, "checkInitialized":I
    sget-object v16, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 297
    .local v16, "intArray":[I
    const/16 v17, 0x0

    move v2, v5

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move-object/from16 v29, v16

    move/from16 v16, v17

    .local v17, "objectsPosition":I
    goto/16 :goto_b

    .line 299
    .end local v5    # "oneofCount":I
    .end local v8    # "hasBitsCount":I
    .end local v9    # "minFieldNumber":I
    .end local v11    # "maxFieldNumber":I
    .end local v12    # "numEntries":I
    .end local v13    # "mapFieldCount":I
    .end local v14    # "repeatedFieldCount":I
    .end local v15    # "checkInitialized":I
    .end local v16    # "intArray":[I
    .end local v17    # "objectsPosition":I
    :cond_5
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 300
    if-lt v4, v6, :cond_7

    .line 301
    and-int/lit16 v7, v4, 0x1fff

    .line 302
    .local v7, "result":I
    const/16 v8, 0xd

    .line 303
    .local v8, "shift":I
    :goto_3
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_6

    .line 304
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 305
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_3

    .line 307
    :cond_6
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 309
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_7
    move v7, v4

    .line 311
    .local v7, "oneofCount":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 312
    if-lt v4, v6, :cond_9

    .line 313
    and-int/lit16 v5, v4, 0x1fff

    .line 314
    .local v5, "result":I
    const/16 v9, 0xd

    .line 315
    .local v9, "shift":I
    :goto_4
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_8

    .line 316
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 317
    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    .line 319
    :cond_8
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    .line 321
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v11    # "i":I
    .restart local v8    # "i":I
    :cond_9
    move v5, v4

    .line 323
    .local v5, "hasBitsCount":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 324
    if-lt v4, v6, :cond_b

    .line 325
    and-int/lit16 v8, v4, 0x1fff

    .line 326
    .local v8, "result":I
    const/16 v11, 0xd

    .line 327
    .local v11, "shift":I
    :goto_5
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "i":I
    .local v12, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    if-lt v9, v6, :cond_a

    .line 328
    and-int/lit16 v9, v4, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    .line 329
    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    .line 331
    :cond_a
    shl-int v9, v4, v11

    or-int v4, v8, v9

    move v9, v12

    .line 333
    .end local v8    # "result":I
    .end local v11    # "shift":I
    .end local v12    # "i":I
    .restart local v9    # "i":I
    :cond_b
    move v8, v4

    .line 335
    .local v8, "minFieldNumber":I
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 336
    if-lt v4, v6, :cond_d

    .line 337
    and-int/lit16 v9, v4, 0x1fff

    .line 338
    .local v9, "result":I
    const/16 v12, 0xd

    .line 339
    .local v12, "shift":I
    :goto_6
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_c

    .line 340
    and-int/lit16 v11, v4, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    .line 341
    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    .line 343
    :cond_c
    shl-int v11, v4, v12

    or-int v4, v9, v11

    move v11, v13

    .line 345
    .end local v9    # "result":I
    .end local v12    # "shift":I
    .end local v13    # "i":I
    .restart local v11    # "i":I
    :cond_d
    move v9, v4

    .line 347
    .local v9, "maxFieldNumber":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 348
    if-lt v4, v6, :cond_f

    .line 349
    and-int/lit16 v11, v4, 0x1fff

    .line 350
    .local v11, "result":I
    const/16 v13, 0xd

    .line 351
    .local v13, "shift":I
    :goto_7
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v4, v12

    if-lt v12, v6, :cond_e

    .line 352
    and-int/lit16 v12, v4, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    .line 353
    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    .line 355
    :cond_e
    shl-int v12, v4, v13

    or-int v4, v11, v12

    move v12, v14

    .line 357
    .end local v11    # "result":I
    .end local v13    # "shift":I
    .end local v14    # "i":I
    .restart local v12    # "i":I
    :cond_f
    move v11, v4

    .line 359
    .local v11, "numEntries":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 360
    if-lt v4, v6, :cond_11

    .line 361
    and-int/lit16 v12, v4, 0x1fff

    .line 362
    .local v12, "result":I
    const/16 v14, 0xd

    .line 363
    .local v14, "shift":I
    :goto_8
    add-int/lit8 v15, v13, 0x1

    .end local v13    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v4, v13

    if-lt v13, v6, :cond_10

    .line 364
    and-int/lit16 v13, v4, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 365
    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    .line 367
    :cond_10
    shl-int v13, v4, v14

    or-int v4, v12, v13

    move v13, v15

    .line 369
    .end local v12    # "result":I
    .end local v14    # "shift":I
    .end local v15    # "i":I
    .restart local v13    # "i":I
    :cond_11
    move v12, v4

    .line 371
    .local v12, "mapFieldCount":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 372
    if-lt v4, v6, :cond_13

    .line 373
    and-int/lit16 v13, v4, 0x1fff

    .line 374
    .local v13, "result":I
    const/16 v15, 0xd

    .line 375
    .local v15, "shift":I
    :goto_9
    add-int/lit8 v16, v14, 0x1

    .end local v14    # "i":I
    .local v16, "i":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v4, v14

    if-lt v14, v6, :cond_12

    .line 376
    and-int/lit16 v14, v4, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 377
    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    .line 379
    :cond_12
    shl-int v14, v4, v15

    or-int v4, v13, v14

    move/from16 v14, v16

    .line 381
    .end local v13    # "result":I
    .end local v15    # "shift":I
    .end local v16    # "i":I
    .restart local v14    # "i":I
    :cond_13
    move v13, v4

    .line 383
    .local v13, "repeatedFieldCount":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 384
    if-lt v4, v6, :cond_15

    .line 385
    and-int/lit16 v14, v4, 0x1fff

    .line 386
    .local v14, "result":I
    const/16 v16, 0xd

    .line 387
    .local v16, "shift":I
    :goto_a
    add-int/lit8 v17, v15, 0x1

    .end local v15    # "i":I
    .local v17, "i":I
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v4, v15

    if-lt v15, v6, :cond_14

    .line 388
    and-int/lit16 v15, v4, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    .line 389
    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    .line 391
    :cond_14
    shl-int v15, v4, v16

    or-int v4, v14, v15

    move/from16 v15, v17

    .line 393
    .end local v14    # "result":I
    .end local v16    # "shift":I
    .end local v17    # "i":I
    .restart local v15    # "i":I
    :cond_15
    move v14, v4

    .line 394
    .local v14, "checkInitialized":I
    add-int v16, v14, v12

    add-int v2, v16, v13

    new-array v2, v2, [I

    .line 396
    .local v2, "intArray":[I
    mul-int/lit8 v16, v7, 0x2

    add-int v16, v16, v5

    move-object/from16 v29, v2

    move/from16 v22, v5

    move v2, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move v7, v15

    .line 399
    .end local v5    # "hasBitsCount":I
    .end local v8    # "minFieldNumber":I
    .end local v9    # "maxFieldNumber":I
    .end local v11    # "numEntries":I
    .end local v12    # "mapFieldCount":I
    .end local v13    # "repeatedFieldCount":I
    .end local v14    # "checkInitialized":I
    .end local v15    # "i":I
    .local v2, "oneofCount":I
    .local v7, "i":I
    .local v16, "objectsPosition":I
    .local v22, "hasBitsCount":I
    .local v23, "minFieldNumber":I
    .local v24, "maxFieldNumber":I
    .local v25, "numEntries":I
    .local v26, "mapFieldCount":I
    .local v27, "repeatedFieldCount":I
    .local v28, "checkInitialized":I
    .local v29, "intArray":[I
    :goto_b
    sget-object v15, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 400
    .local v15, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v30

    .line 401
    .local v30, "messageInfoObjects":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 402
    .local v5, "checkInitializedPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 403
    .local v14, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v8, v25, 0x3

    new-array v13, v8, [I

    .line 404
    .local v13, "buffer":[I
    mul-int/lit8 v8, v25, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    .line 406
    .local v12, "objects":[Ljava/lang/Object;
    move/from16 v8, v28

    .line 407
    .local v8, "mapFieldIndex":I
    add-int v9, v28, v26

    .line 409
    .local v9, "repeatedFieldIndex":I
    const/4 v11, 0x0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v11

    move/from16 v36, v16

    move v11, v7

    .line 410
    .end local v4    # "next":I
    .end local v5    # "checkInitializedPosition":I
    .end local v7    # "i":I
    .end local v8    # "mapFieldIndex":I
    .end local v9    # "repeatedFieldIndex":I
    .end local v16    # "objectsPosition":I
    .local v11, "i":I
    .local v31, "next":I
    .local v32, "checkInitializedPosition":I
    .local v33, "mapFieldIndex":I
    .local v34, "repeatedFieldIndex":I
    .local v35, "bufferIndex":I
    .local v36, "objectsPosition":I
    :goto_c
    if-ge v11, v1, :cond_34

    .line 415
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 416
    .end local v31    # "next":I
    .local v5, "next":I
    if-lt v5, v6, :cond_17

    .line 417
    and-int/lit16 v7, v5, 0x1fff

    .line 418
    .local v7, "result":I
    const/16 v8, 0xd

    .line 419
    .local v8, "shift":I
    :goto_d
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    if-lt v4, v6, :cond_16

    .line 420
    and-int/lit16 v4, v5, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v7, v4

    .line 421
    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_d

    .line 423
    :cond_16
    shl-int v4, v5, v8

    or-int v5, v7, v4

    move v4, v9

    .line 425
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_17
    move v7, v5

    .line 427
    .local v7, "fieldNumber":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 428
    .end local v5    # "next":I
    .local v4, "next":I
    if-lt v4, v6, :cond_19

    .line 429
    and-int/lit16 v5, v4, 0x1fff

    .line 430
    .local v5, "result":I
    const/16 v9, 0xd

    .line 431
    .local v9, "shift":I
    :goto_e
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_18

    .line 432
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 433
    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_e

    .line 435
    :cond_18
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    .line 437
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v11    # "i":I
    .restart local v8    # "i":I
    :cond_19
    move v5, v4

    .line 438
    .local v5, "fieldTypeWithExtraBits":I
    and-int/lit16 v9, v5, 0xff

    .line 440
    .local v9, "fieldType":I
    and-int/lit16 v11, v5, 0x400

    if-eqz v11, :cond_1a

    .line 441
    add-int/lit8 v11, v32, 0x1

    .end local v32    # "checkInitializedPosition":I
    .local v11, "checkInitializedPosition":I
    aput v35, v29, v32

    move/from16 v32, v11

    .line 449
    .end local v11    # "checkInitializedPosition":I
    .restart local v32    # "checkInitializedPosition":I
    :cond_1a
    const/16 v11, 0x33

    if-lt v9, v11, :cond_23

    .line 450
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 451
    if-lt v4, v6, :cond_1c

    .line 452
    and-int/lit16 v8, v4, 0x1fff

    .line 453
    .local v8, "result":I
    const/16 v31, 0xd

    .line 454
    .local v31, "shift":I
    :goto_f
    add-int/lit8 v37, v11, 0x1

    .end local v11    # "i":I
    .local v37, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_1b

    .line 455
    and-int/lit16 v11, v4, 0x1fff

    shl-int v11, v11, v31

    or-int/2addr v8, v11

    .line 456
    add-int/lit8 v31, v31, 0xd

    move/from16 v11, v37

    goto :goto_f

    .line 458
    :cond_1b
    shl-int v11, v4, v31

    or-int v4, v8, v11

    move/from16 v11, v37

    .line 460
    .end local v8    # "result":I
    .end local v31    # "shift":I
    .end local v37    # "i":I
    .restart local v11    # "i":I
    :cond_1c
    move v8, v4

    .line 462
    .local v8, "oneofIndex":I
    add-int/lit8 v6, v9, -0x33

    .line 463
    .local v6, "oneofFieldType":I
    const/16 v3, 0x9

    if-eq v6, v3, :cond_1f

    const/16 v3, 0x11

    if-ne v6, v3, :cond_1d

    move/from16 v38, v1

    goto :goto_10

    .line 466
    :cond_1d
    const/16 v3, 0xc

    if-ne v6, v3, :cond_1e

    .line 468
    and-int/lit8 v3, v20, 0x1

    move/from16 v38, v1

    const/4 v1, 0x1

    .end local v1    # "length":I
    .local v38, "length":I
    if-ne v3, v1, :cond_20

    .line 469
    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v1, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v1, "objectsPosition":I
    aget-object v18, v30, v36

    aput-object v18, v12, v3

    move/from16 v36, v1

    goto :goto_11

    .line 466
    .end local v38    # "length":I
    .local v1, "length":I
    .restart local v36    # "objectsPosition":I
    :cond_1e
    move/from16 v38, v1

    .end local v1    # "length":I
    .restart local v38    # "length":I
    goto :goto_11

    .line 463
    .end local v38    # "length":I
    .restart local v1    # "length":I
    :cond_1f
    move/from16 v38, v1

    .line 465
    .end local v1    # "length":I
    .restart local v38    # "length":I
    :goto_10
    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v3, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v3, "objectsPosition":I
    aget-object v18, v30, v36

    aput-object v18, v12, v1

    move/from16 v36, v3

    .line 474
    .end local v3    # "objectsPosition":I
    .restart local v36    # "objectsPosition":I
    :cond_20
    :goto_11
    mul-int/lit8 v1, v8, 0x2

    .line 475
    .local v1, "index":I
    aget-object v3, v30, v1

    .line 476
    .local v3, "o":Ljava/lang/Object;
    move/from16 v18, v4

    .end local v4    # "next":I
    .local v18, "next":I
    instance-of v4, v3, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_21

    .line 477
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    .local v4, "oneofField":Ljava/lang/reflect/Field;
    goto :goto_12

    .line 479
    .end local v4    # "oneofField":Ljava/lang/reflect/Field;
    :cond_21
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 484
    .restart local v4    # "oneofField":Ljava/lang/reflect/Field;
    aput-object v4, v30, v1

    .line 487
    :goto_12
    move/from16 v39, v10

    move/from16 v19, v11

    .end local v10    # "isProto3":Z
    .end local v11    # "i":I
    .local v19, "i":I
    .local v39, "isProto3":Z
    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 490
    .local v10, "fieldOffset":I
    add-int/lit8 v1, v1, 0x1

    .line 491
    aget-object v3, v30, v1

    .line 492
    instance-of v11, v3, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_22

    .line 493
    move-object v11, v3

    check-cast v11, Ljava/lang/reflect/Field;

    .local v11, "oneofCaseField":Ljava/lang/reflect/Field;
    goto :goto_13

    .line 495
    .end local v11    # "oneofCaseField":Ljava/lang/reflect/Field;
    :cond_22
    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-static {v14, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 496
    .restart local v11    # "oneofCaseField":Ljava/lang/reflect/Field;
    aput-object v11, v30, v1

    .line 499
    :goto_13
    move-object/from16 v40, v3

    move-object/from16 v31, v4

    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "oneofField":Ljava/lang/reflect/Field;
    .local v31, "oneofField":Ljava/lang/reflect/Field;
    .local v40, "o":Ljava/lang/Object;
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 500
    .local v3, "presenceFieldOffset":I
    const/4 v1, 0x0

    .line 501
    .end local v6    # "oneofFieldType":I
    .end local v8    # "oneofIndex":I
    .end local v11    # "oneofCaseField":Ljava/lang/reflect/Field;
    .end local v31    # "oneofField":Ljava/lang/reflect/Field;
    .end local v40    # "o":Ljava/lang/Object;
    .local v1, "presenceMaskShift":I
    move-object/from16 v40, v0

    move/from16 v41, v2

    move v6, v10

    move/from16 v4, v18

    move/from16 v11, v19

    move v10, v7

    goto/16 :goto_1c

    .line 502
    .end local v3    # "presenceFieldOffset":I
    .end local v18    # "next":I
    .end local v19    # "i":I
    .end local v38    # "length":I
    .end local v39    # "isProto3":Z
    .local v1, "length":I
    .local v4, "next":I
    .local v8, "i":I
    .local v10, "isProto3":Z
    :cond_23
    move/from16 v38, v1

    move/from16 v39, v10

    .end local v1    # "length":I
    .end local v10    # "isProto3":Z
    .restart local v38    # "length":I
    .restart local v39    # "isProto3":Z
    add-int/lit8 v1, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v1, "objectsPosition":I
    aget-object v3, v30, v36

    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 503
    .local v3, "field":Ljava/lang/reflect/Field;
    const/16 v6, 0x31

    const/16 v10, 0x9

    if-eq v9, v10, :cond_2c

    const/16 v10, 0x11

    if-ne v9, v10, :cond_24

    goto/16 :goto_16

    .line 505
    :cond_24
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_2b

    if-ne v9, v6, :cond_25

    goto :goto_15

    .line 508
    :cond_25
    const/16 v10, 0xc

    if-eq v9, v10, :cond_29

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_29

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_26

    goto :goto_14

    .line 514
    :cond_26
    const/16 v10, 0x32

    if-ne v9, v10, :cond_28

    .line 515
    add-int/lit8 v10, v33, 0x1

    .end local v33    # "mapFieldIndex":I
    .local v10, "mapFieldIndex":I
    aput v35, v29, v33

    .line 516
    div-int/lit8 v11, v35, 0x3

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v18, v1, 0x1

    .end local v1    # "objectsPosition":I
    .local v18, "objectsPosition":I
    aget-object v1, v30, v1

    aput-object v1, v12, v11

    .line 517
    and-int/lit16 v1, v5, 0x800

    if-eqz v1, :cond_27

    .line 518
    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v11, 0x1

    add-int/2addr v1, v11

    add-int/lit8 v11, v18, 0x1

    .end local v18    # "objectsPosition":I
    .local v11, "objectsPosition":I
    aget-object v18, v30, v18

    aput-object v18, v12, v1

    move/from16 v33, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_17

    .line 517
    .end local v11    # "objectsPosition":I
    .restart local v18    # "objectsPosition":I
    :cond_27
    move/from16 v33, v10

    move/from16 v1, v18

    const/4 v11, 0x1

    goto :goto_17

    .line 514
    .end local v10    # "mapFieldIndex":I
    .end local v18    # "objectsPosition":I
    .restart local v1    # "objectsPosition":I
    .restart local v33    # "mapFieldIndex":I
    :cond_28
    const/4 v11, 0x1

    goto :goto_17

    .line 511
    :cond_29
    :goto_14
    and-int/lit8 v10, v20, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2a

    .line 512
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "objectsPosition":I
    .restart local v11    # "objectsPosition":I
    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_17

    .line 511
    .end local v11    # "objectsPosition":I
    .restart local v1    # "objectsPosition":I
    :cond_2a
    const/4 v11, 0x1

    goto :goto_17

    .line 507
    :cond_2b
    :goto_15
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "objectsPosition":I
    .restart local v11    # "objectsPosition":I
    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_17

    .line 504
    .end local v11    # "objectsPosition":I
    .restart local v1    # "objectsPosition":I
    :cond_2c
    :goto_16
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v10

    .line 522
    :goto_17
    move v10, v7

    .end local v7    # "fieldNumber":I
    .local v10, "fieldNumber":I
    invoke-virtual {v15, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    .line 523
    .local v6, "fieldOffset":I
    and-int/lit8 v7, v20, 0x1

    if-ne v7, v11, :cond_30

    const/16 v7, 0x11

    if-gt v9, v7, :cond_30

    .line 524
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 525
    const v8, 0xd800

    if-lt v4, v8, :cond_2e

    .line 526
    and-int/lit16 v8, v4, 0x1fff

    .line 527
    .local v8, "result":I
    const/16 v18, 0xd

    .line 528
    .local v18, "shift":I
    :goto_18
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .restart local v19    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    const v11, 0xd800

    if-lt v7, v11, :cond_2d

    .line 529
    and-int/lit16 v7, v4, 0x1fff

    shl-int v7, v7, v18

    or-int/2addr v8, v7

    .line 530
    add-int/lit8 v18, v18, 0xd

    move/from16 v7, v19

    const/4 v11, 0x1

    goto :goto_18

    .line 532
    :cond_2d
    shl-int v7, v4, v18

    or-int v4, v8, v7

    move/from16 v8, v19

    goto :goto_19

    .line 525
    .end local v8    # "result":I
    .end local v18    # "shift":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_2e
    move v11, v8

    move v8, v7

    .line 534
    .end local v7    # "i":I
    .local v8, "i":I
    :goto_19
    move v7, v4

    .line 537
    .local v7, "hasBitsIndex":I
    mul-int/lit8 v18, v2, 0x2

    div-int/lit8 v19, v7, 0x20

    add-int v18, v18, v19

    .line 538
    .local v18, "index":I
    aget-object v11, v30, v18

    .line 539
    .local v11, "o":Ljava/lang/Object;
    move-object/from16 v40, v0

    .end local v0    # "info":Ljava/lang/String;
    .local v40, "info":Ljava/lang/String;
    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2f

    .line 540
    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/Field;

    .local v0, "hasBitsField":Ljava/lang/reflect/Field;
    goto :goto_1a

    .line 542
    .end local v0    # "hasBitsField":Ljava/lang/reflect/Field;
    :cond_2f
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 543
    .restart local v0    # "hasBitsField":Ljava/lang/reflect/Field;
    aput-object v0, v30, v18

    .line 546
    :goto_1a
    move/from16 v19, v1

    move/from16 v41, v2

    .end local v1    # "objectsPosition":I
    .end local v2    # "oneofCount":I
    .local v19, "objectsPosition":I
    .local v41, "oneofCount":I
    invoke-virtual {v15, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 547
    .local v1, "presenceFieldOffset":I
    rem-int/lit8 v7, v7, 0x20

    .line 548
    .end local v0    # "hasBitsField":Ljava/lang/reflect/Field;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v18    # "index":I
    .local v7, "presenceMaskShift":I
    move v0, v1

    move v1, v7

    goto :goto_1b

    .line 523
    .end local v7    # "presenceMaskShift":I
    .end local v19    # "objectsPosition":I
    .end local v40    # "info":Ljava/lang/String;
    .end local v41    # "oneofCount":I
    .local v0, "info":Ljava/lang/String;
    .local v1, "objectsPosition":I
    .restart local v2    # "oneofCount":I
    :cond_30
    move-object/from16 v40, v0

    move/from16 v19, v1

    move/from16 v41, v2

    .line 549
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "objectsPosition":I
    .end local v2    # "oneofCount":I
    .restart local v19    # "objectsPosition":I
    .restart local v40    # "info":Ljava/lang/String;
    .restart local v41    # "oneofCount":I
    const/4 v0, 0x0

    .line 550
    .local v0, "presenceFieldOffset":I
    const/4 v1, 0x0

    .line 553
    .local v1, "presenceMaskShift":I
    :goto_1b
    const/16 v2, 0x12

    if-lt v9, v2, :cond_31

    const/16 v2, 0x31

    if-gt v9, v2, :cond_31

    .line 556
    add-int/lit8 v2, v34, 0x1

    .end local v34    # "repeatedFieldIndex":I
    .local v2, "repeatedFieldIndex":I
    aput v6, v29, v34

    move v3, v0

    move/from16 v34, v2

    move v11, v8

    move/from16 v36, v19

    goto :goto_1c

    .line 560
    .end local v2    # "repeatedFieldIndex":I
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v34    # "repeatedFieldIndex":I
    :cond_31
    move v3, v0

    move v11, v8

    move/from16 v36, v19

    .end local v0    # "presenceFieldOffset":I
    .end local v8    # "i":I
    .end local v19    # "objectsPosition":I
    .local v3, "presenceFieldOffset":I
    .local v11, "i":I
    .restart local v36    # "objectsPosition":I
    :goto_1c
    add-int/lit8 v0, v35, 0x1

    .end local v35    # "bufferIndex":I
    .local v0, "bufferIndex":I
    aput v10, v13, v35

    .line 561
    add-int/lit8 v2, v0, 0x1

    .line 562
    .end local v0    # "bufferIndex":I
    .local v2, "bufferIndex":I
    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_32

    const/high16 v7, 0x20000000

    goto :goto_1d

    :cond_32
    const/4 v7, 0x0

    .line 563
    :goto_1d
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_33

    const/high16 v8, 0x10000000

    goto :goto_1e

    :cond_33
    const/4 v8, 0x0

    :goto_1e
    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x14

    or-int/2addr v7, v8

    or-int/2addr v7, v6

    aput v7, v13, v0

    .line 566
    add-int/lit8 v35, v2, 0x1

    .end local v2    # "bufferIndex":I
    .restart local v35    # "bufferIndex":I
    shl-int/lit8 v0, v1, 0x14

    or-int/2addr v0, v3

    aput v0, v13, v2

    .line 567
    .end local v1    # "presenceMaskShift":I
    .end local v3    # "presenceFieldOffset":I
    .end local v5    # "fieldTypeWithExtraBits":I
    .end local v6    # "fieldOffset":I
    .end local v9    # "fieldType":I
    .end local v10    # "fieldNumber":I
    move/from16 v31, v4

    move/from16 v1, v38

    move/from16 v10, v39

    move-object/from16 v0, v40

    move/from16 v2, v41

    const v6, 0xd800

    goto/16 :goto_c

    .line 569
    .end local v4    # "next":I
    .end local v38    # "length":I
    .end local v39    # "isProto3":Z
    .end local v40    # "info":Ljava/lang/String;
    .end local v41    # "oneofCount":I
    .local v0, "info":Ljava/lang/String;
    .local v1, "length":I
    .local v2, "oneofCount":I
    .local v10, "isProto3":Z
    .local v31, "next":I
    :cond_34
    move-object/from16 v40, v0

    move/from16 v38, v1

    move/from16 v41, v2

    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "oneofCount":I
    .restart local v38    # "length":I
    .restart local v40    # "info":Ljava/lang/String;
    .restart local v41    # "oneofCount":I
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v9

    const/4 v1, 0x0

    add-int v2, v28, v26

    move-object v4, v0

    move-object v5, v13

    move-object v6, v12

    move/from16 v7, v23

    move/from16 v8, v24

    move v3, v11

    .end local v11    # "i":I
    .local v3, "i":I
    move v11, v1

    move-object v1, v12

    .end local v12    # "objects":[Ljava/lang/Object;
    .local v1, "objects":[Ljava/lang/Object;
    move-object/from16 v12, v29

    move-object/from16 v37, v13

    .end local v13    # "buffer":[I
    .local v37, "buffer":[I
    move/from16 v13, v28

    move-object/from16 v42, v14

    .end local v14    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v42, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v14, v2

    move-object v2, v15

    .end local v15    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/MessageLite;ZZ[IIILcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)V

    .line 569
    return-object v0
.end method

.method private numberAt(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 5675
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method private static offset(I)J
    .locals 2
    .param p0, "value"    # I

    .line 5699
    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5739
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5723
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5727
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5731
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5735
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 15
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "bufferPosition"    # I
    .param p6, "fieldOffset"    # J
    .param p8, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4657
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p6

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4658
    .local v11, "unsafe":Lsun/misc/Unsafe;
    move/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 4659
    .local v13, "mapDefaultEntry":Ljava/lang/Object;
    invoke-virtual {v11, v8, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 4660
    .local v0, "mapField":Ljava/lang/Object;
    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4661
    move-object v1, v0

    .line 4662
    .local v1, "oldMapField":Ljava/lang/Object;
    iget-object v2, v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4663
    iget-object v2, v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4664
    invoke-virtual {v11, v8, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v14, v0

    goto :goto_0

    .line 4660
    .end local v1    # "oldMapField":Ljava/lang/Object;
    :cond_0
    move-object v14, v0

    .line 4666
    .end local v0    # "mapField":Ljava/lang/Object;
    .local v14, "mapField":Ljava/lang/Object;
    :goto_0
    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 4670
    invoke-interface {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 4671
    invoke-interface {v0, v14}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 4666
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->decodeMapEntry([BIILcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 22
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "typeAndOffset"    # I
    .param p9, "fieldType"    # I
    .param p10, "fieldOffset"    # J
    .param p12, "bufferPosition"    # I
    .param p13, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4689
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move-object/from16 v7, p13

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4690
    .local v6, "unsafe":Lsun/misc/Unsafe;
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v3, v15, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    .line 4691
    .local v4, "oneofCaseOffset":J
    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch p9, :pswitch_data_0

    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    goto/16 :goto_9

    .line 4817
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_0
    const/4 v2, 0x3

    if-ne v12, v2, :cond_2

    .line 4818
    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v17, v2, 0x4

    .line 4819
    .local v17, "endTag":I
    nop

    .line 4821
    invoke-direct {v0, v15}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 4820
    move-object/from16 v3, p2

    move-wide v8, v4

    .end local v4    # "oneofCaseOffset":J
    .local v8, "oneofCaseOffset":J
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v10, v6

    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    move/from16 v6, v17

    move-object v0, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4823
    .end local p3    # "position":I
    .local v2, "position":I
    invoke-virtual {v10, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v11, :cond_0

    .line 4824
    invoke-virtual {v10, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_0

    .line 4825
    :cond_0
    nop

    :goto_0
    move-object/from16 v3, v16

    .line 4826
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 4827
    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 4829
    :cond_1
    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4830
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4829
    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4832
    :goto_1
    invoke-virtual {v10, v1, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4833
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v17    # "endTag":I
    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    move v0, v2

    goto/16 :goto_a

    .line 4817
    .end local v2    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :cond_2
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    .end local v4    # "oneofCaseOffset":J
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v5, p3

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    goto/16 :goto_9

    .line 4810
    .end local v8    # "oneofCaseOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_1
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    .end local v4    # "oneofCaseOffset":J
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_3

    .line 4811
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    .end local v8    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    invoke-static {v4, v5, v0}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4812
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget-wide v8, v0, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4813
    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_a

    .line 4810
    .end local v2    # "position":I
    .end local v6    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :cond_3
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    .end local v8    # "oneofCaseOffset":J
    .restart local v6    # "oneofCaseOffset":J
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_9

    .line 4803
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_2
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    .end local v4    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_4

    .line 4804
    invoke-static {v4, v5, v0}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4805
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget v3, v0, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4806
    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_a

    .line 4803
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_4
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_9

    .line 4789
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_3
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    .end local v4    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_7

    .line 4790
    invoke-static {v4, v5, v0}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4791
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget v3, v0, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4792
    .local v3, "enumValue":I
    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v5

    .line 4793
    .local v5, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    if-eqz v5, :cond_6

    invoke-interface {v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    goto :goto_2

    .line 4798
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v9

    move-object/from16 p3, v5

    .end local v5    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .local p3, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v10

    move/from16 v10, p5

    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v9, v10, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_3

    .line 4793
    .end local p3    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .local v5, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :cond_6
    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    .line 4794
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4795
    invoke-virtual {v5, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4800
    .end local v3    # "enumValue":I
    .end local p3    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    :goto_3
    move-object/from16 v9, p2

    move v0, v2

    move-object v4, v5

    goto/16 :goto_a

    .line 4789
    .end local v2    # "position":I
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .local p3, "position":I
    :cond_7
    move-object v8, v0

    move-object v4, v10

    move-object/from16 v0, p0

    move/from16 v10, p5

    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v9, p2

    goto/16 :goto_9

    .line 4782
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_4
    move-object v8, v7

    move-wide/from16 v20, v4

    move-object v4, v6

    move-wide/from16 v6, v20

    move v5, v9

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_8

    .line 4783
    move-object/from16 v9, p2

    invoke-static {v9, v5, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4784
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget-object v3, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4785
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_a

    .line 4782
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_8
    move-object/from16 v9, p2

    goto/16 :goto_9

    .line 4764
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_5
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_b

    .line 4765
    nop

    .line 4767
    invoke-direct {v0, v15}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 4766
    move/from16 v3, p4

    invoke-static {v2, v9, v5, v3, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4769
    .end local p3    # "position":I
    .restart local v2    # "position":I
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v11, :cond_9

    .line 4770
    invoke-virtual {v4, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_4

    .line 4771
    :cond_9
    nop

    :goto_4
    move-object/from16 v5, v16

    .line 4772
    .local v5, "oldValue":Ljava/lang/Object;
    if-nez v5, :cond_a

    .line 4773
    iget-object v0, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 4775
    :cond_a
    iget-object v0, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4776
    invoke-static {v5, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4775
    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4778
    :goto_5
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4779
    .end local v5    # "oldValue":Ljava/lang/Object;
    move v0, v2

    goto/16 :goto_a

    .line 4764
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_b
    move/from16 v3, p4

    goto/16 :goto_9

    .line 4746
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_6
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_10

    .line 4747
    invoke-static {v9, v5, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4748
    .end local p3    # "position":I
    .local v0, "position":I
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4749
    .local v2, "length":I
    if-nez v2, :cond_c

    .line 4750
    const-string v3, ""

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 4752
    :cond_c
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_e

    add-int v3, v0, v2

    .line 4753
    invoke-static {v9, v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .line 4754
    :cond_d
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 4756
    :cond_e
    :goto_6
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v9, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4757
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4758
    add-int/2addr v0, v2

    .line 4760
    .end local v3    # "value":Ljava/lang/String;
    :goto_7
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4761
    .end local v2    # "length":I
    goto/16 :goto_a

    .line 4739
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_7
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_10

    .line 4740
    invoke-static {v9, v5, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4741
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget-wide v2, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4742
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 4732
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_8
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v2, :cond_10

    .line 4733
    invoke-static/range {p2 .. p3}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4734
    add-int/lit8 v0, v5, 0x4

    .line 4735
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 4724
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_9
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    const/4 v0, 0x1

    if-ne v12, v0, :cond_10

    .line 4725
    invoke-static/range {p2 .. p3}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4726
    add-int/lit8 v0, v5, 0x8

    .line 4727
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 4716
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_a
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_10

    .line 4717
    invoke-static {v9, v5, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4718
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4719
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4708
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_b
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_10

    .line 4709
    invoke-static {v9, v5, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4710
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget-wide v2, v8, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4711
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4700
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_c
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v2, :cond_10

    .line 4701
    invoke-static/range {p2 .. p3}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4702
    add-int/lit8 v0, v5, 0x4

    .line 4703
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4693
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_d
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    const/4 v0, 0x1

    if-ne v12, v0, :cond_10

    .line 4694
    invoke-static/range {p2 .. p3}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4695
    add-int/lit8 v0, v5, 0x8

    .line 4696
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4838
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_10
    :goto_9
    move v0, v5

    .end local p3    # "position":I
    .restart local v0    # "position":I
    :goto_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 29
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5177
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 5178
    .local v9, "unsafe":Lsun/misc/Unsafe;
    const/4 v0, 0x0

    .line 5179
    .local v0, "tag":I
    const/4 v1, -0x1

    .line 5180
    .local v1, "oldNumber":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p3

    .line 5181
    .end local p3    # "position":I
    .local v0, "position":I
    .local v1, "tag":I
    .local v2, "oldNumber":I
    .local v3, "pos":I
    :goto_0
    if-ge v0, v13, :cond_1e

    .line 5182
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "position":I
    .local v4, "position":I
    aget-byte v0, v12, v0

    .line 5183
    .end local v1    # "tag":I
    .local v0, "tag":I
    if-gez v0, :cond_0

    .line 5184
    invoke-static {v0, v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 5185
    iget v0, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v16, v0

    move v10, v4

    goto :goto_1

    .line 5183
    :cond_0
    move/from16 v16, v0

    move v10, v4

    .line 5187
    .end local v0    # "tag":I
    .end local v4    # "position":I
    .local v10, "position":I
    .local v16, "tag":I
    :goto_1
    ushr-int/lit8 v8, v16, 0x3

    .line 5188
    .local v8, "number":I
    and-int/lit8 v7, v16, 0x7

    .line 5189
    .local v7, "wireType":I
    if-le v8, v2, :cond_1

    .line 5190
    div-int/lit8 v0, v3, 0x3

    invoke-direct {v15, v8, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v0

    move v6, v0

    .end local v3    # "pos":I
    .local v0, "pos":I
    goto :goto_2

    .line 5192
    .end local v0    # "pos":I
    .restart local v3    # "pos":I
    :cond_1
    invoke-direct {v15, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v0

    move v6, v0

    .line 5194
    .end local v3    # "pos":I
    .local v6, "pos":I
    :goto_2
    move/from16 v17, v8

    .line 5195
    .end local v2    # "oldNumber":I
    .local v17, "oldNumber":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 5197
    const/4 v0, 0x0

    move/from16 v19, v0

    move/from16 p3, v7

    move/from16 v18, v8

    move-object/from16 v27, v9

    .end local v6    # "pos":I
    .restart local v0    # "pos":I
    goto/16 :goto_9

    .line 5199
    .end local v0    # "pos":I
    .restart local v6    # "pos":I
    :cond_2
    iget-object v0, v15, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, v6, 0x1

    aget v4, v0, v1

    .line 5200
    .local v4, "typeAndOffset":I
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v5

    .line 5201
    .local v5, "fieldType":I
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 5202
    .local v2, "fieldOffset":J
    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v5, v0, :cond_13

    .line 5203
    const/4 v0, 0x1

    packed-switch v5, :pswitch_data_0

    .line 5314
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .local v11, "unsafe":Lsun/misc/Unsafe;
    .local v21, "typeAndOffset":I
    .local v22, "number":I
    .local v23, "fieldType":I
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5306
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_0
    if-nez v7, :cond_3

    .line 5307
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    .line 5308
    iget-wide v0, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5309
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v18

    .line 5308
    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    .end local v2    # "fieldOffset":J
    .local v20, "fieldOffset":J
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5310
    move v3, v6

    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5306
    .end local v20    # "fieldOffset":J
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :cond_3
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v20    # "fieldOffset":J
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5298
    .end local v20    # "fieldOffset":J
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_1
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .local v8, "typeAndOffset":I
    .restart local v20    # "fieldOffset":J
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_4

    .line 5299
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5300
    .end local v10    # "position":I
    .local v0, "position":I
    iget v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5301
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5300
    move-wide/from16 v4, v20

    .end local v20    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5302
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5298
    .end local v0    # "position":I
    .end local v4    # "fieldOffset":J
    .restart local v10    # "position":I
    .restart local v20    # "fieldOffset":J
    :cond_4
    move-wide/from16 v4, v20

    .end local v20    # "fieldOffset":J
    .restart local v4    # "fieldOffset":J
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5291
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_2
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_5

    .line 5292
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5293
    .end local v10    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5294
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5291
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_5
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5284
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_3
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v1, :cond_6

    .line 5285
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5286
    .end local v10    # "position":I
    .restart local v0    # "position":I
    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5287
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5284
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_6
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5269
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_4
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v1, :cond_8

    .line 5270
    nop

    .line 5272
    invoke-direct {v15, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 5271
    invoke-static {v0, v12, v10, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5273
    .end local v10    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5274
    .local v1, "oldValue":Ljava/lang/Object;
    if-nez v1, :cond_7

    .line 5275
    iget-object v2, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 5277
    :cond_7
    iget-object v2, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5278
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5277
    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5280
    nop

    .line 5181
    .end local v1    # "oldValue":Ljava/lang/Object;
    .end local v4    # "fieldOffset":J
    .end local v7    # "wireType":I
    .end local v8    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    :goto_3
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5269
    .end local v0    # "position":I
    .restart local v4    # "fieldOffset":J
    .restart local v7    # "wireType":I
    .restart local v8    # "typeAndOffset":I
    .restart local v10    # "position":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    :cond_8
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5258
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_5
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v1, :cond_a

    .line 5259
    const/high16 v0, 0x20000000

    and-int/2addr v0, v8

    if-nez v0, :cond_9

    .line 5260
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeString([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v10    # "position":I
    .restart local v0    # "position":I
    goto :goto_4

    .line 5262
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_9
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5264
    .end local v10    # "position":I
    .restart local v0    # "position":I
    :goto_4
    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5265
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5258
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_a
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5251
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_6
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_c

    .line 5252
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 5253
    .end local v10    # "position":I
    .local v1, "position":I
    iget-wide v2, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    invoke-static {v14, v4, v5, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 5254
    move v0, v1

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5251
    .end local v1    # "position":I
    .restart local v10    # "position":I
    :cond_c
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5244
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_7
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    const/4 v0, 0x5

    if-ne v7, v0, :cond_d

    .line 5245
    invoke-static {v12, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5246
    add-int/lit8 v0, v10, 0x4

    .line 5247
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5244
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_d
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5236
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    :pswitch_8
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .local v4, "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v0, :cond_e

    .line 5237
    invoke-static {v12, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v4

    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    .end local v4    # "fieldOffset":J
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .local v20, "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5238
    add-int/lit8 v0, v10, 0x8

    .line 5239
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_0

    .line 5236
    .end local v0    # "position":I
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .restart local v4    # "fieldOffset":J
    .local v8, "typeAndOffset":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "position":I
    :cond_e
    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    .end local v4    # "fieldOffset":J
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v20

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5228
    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_9
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_f

    .line 5229
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5230
    .end local v10    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    move-object/from16 v4, v20

    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v4, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5231
    move-object v9, v4

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 5228
    .end local v0    # "position":I
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "position":I
    .restart local v20    # "unsafe":Lsun/misc/Unsafe;
    :cond_f
    move-object/from16 v4, v20

    .end local v20    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v27, v4

    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5220
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_a
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v4, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-nez v7, :cond_10

    .line 5221
    invoke-static {v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    .line 5222
    iget-wide v2, v11, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v4

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move-wide v2, v8

    move-object v11, v4

    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5223
    move v3, v6

    move v0, v10

    move-object v9, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, p5

    goto/16 :goto_0

    .line 5220
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    :cond_10
    move-object v11, v4

    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5212
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .local v4, "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_b
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    const/4 v0, 0x5

    if-ne v7, v0, :cond_11

    .line 5213
    invoke-static {v12, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 5214
    add-int/lit8 v0, v10, 0x4

    .line 5215
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move-object v9, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, p5

    goto/16 :goto_0

    .line 5212
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_11
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5205
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_c
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    if-ne v7, v0, :cond_12

    .line 5206
    invoke-static {v12, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 5207
    add-int/lit8 v0, v10, 0x8

    .line 5208
    .end local v10    # "position":I
    .restart local v0    # "position":I
    move v3, v6

    move-object v9, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, p5

    goto/16 :goto_0

    .line 5205
    .end local v0    # "position":I
    .restart local v10    # "position":I
    :cond_12
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5316
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .end local v22    # "number":I
    .end local v23    # "fieldType":I
    .restart local v2    # "fieldOffset":J
    .restart local v4    # "typeAndOffset":I
    .restart local v5    # "fieldType":I
    .local v8, "number":I
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    :cond_13
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    .end local v2    # "fieldOffset":J
    .end local v4    # "typeAndOffset":I
    .end local v5    # "fieldType":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "fieldOffset":J
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .restart local v22    # "number":I
    .restart local v23    # "fieldType":I
    const/16 v0, 0x1b

    .end local v23    # "fieldType":I
    .restart local v5    # "fieldType":I
    if-ne v5, v0, :cond_17

    .line 5318
    if-ne v7, v1, :cond_16

    .line 5319
    invoke-virtual {v11, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 5320
    .local v0, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_15

    .line 5321
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 5322
    .local v1, "size":I
    nop

    .line 5324
    if-nez v1, :cond_14

    const/16 v2, 0xa

    goto :goto_6

    :cond_14
    mul-int/lit8 v2, v1, 0x2

    .line 5323
    :goto_6
    invoke-interface {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5325
    invoke-virtual {v11, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_7

    .line 5320
    .end local v1    # "size":I
    :cond_15
    move-object/from16 v18, v0

    .line 5327
    .end local v0    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .local v18, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :goto_7
    nop

    .line 5329
    invoke-direct {v15, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 5328
    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v15, v5

    .end local v5    # "fieldType":I
    .local v15, "fieldType":I
    move-object/from16 v5, v18

    move/from16 v19, v6

    .end local v6    # "pos":I
    .local v19, "pos":I
    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5330
    .end local v10    # "position":I
    .local v0, "position":I
    move-object/from16 v15, p0

    move-object v9, v11

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v11, p5

    goto/16 :goto_0

    .line 5318
    .end local v0    # "position":I
    .end local v15    # "fieldType":I
    .end local v18    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .end local v19    # "pos":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "pos":I
    .restart local v10    # "position":I
    :cond_16
    move v15, v5

    move/from16 v19, v6

    .end local v5    # "fieldType":I
    .end local v6    # "pos":I
    .restart local v15    # "fieldType":I
    .restart local v19    # "pos":I
    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_8

    .line 5332
    .end local v15    # "fieldType":I
    .end local v19    # "pos":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "pos":I
    :cond_17
    move v15, v5

    move/from16 v19, v6

    .end local v5    # "fieldType":I
    .end local v6    # "pos":I
    .restart local v15    # "fieldType":I
    .restart local v19    # "pos":I
    const/16 v0, 0x31

    if-gt v15, v0, :cond_19

    .line 5334
    move v6, v10

    .line 5335
    .local v6, "oldPosition":I
    move/from16 v5, v21

    .end local v21    # "typeAndOffset":I
    .local v5, "typeAndOffset":I
    int-to-long v3, v5

    .line 5336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v20, v3

    move v3, v10

    move/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "typeAndOffset":I
    .local v18, "typeAndOffset":I
    move/from16 v5, v16

    move/from16 v24, v6

    .end local v6    # "oldPosition":I
    .local v24, "oldPosition":I
    move/from16 v6, v22

    move/from16 p3, v7

    .end local v7    # "wireType":I
    .local p3, "wireType":I
    move-wide/from16 v25, v8

    move/from16 v28, v22

    move/from16 v22, v18

    move/from16 v18, v28

    .end local v8    # "fieldOffset":J
    .local v18, "number":I
    .local v22, "typeAndOffset":I
    .local v25, "fieldOffset":J
    move/from16 v8, v19

    move/from16 v23, v10

    move-object/from16 v27, v11

    .end local v10    # "position":I
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v23, "position":I
    .local v27, "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v9, v20

    move v11, v15

    move-wide/from16 v12, v25

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5349
    .end local v23    # "position":I
    .restart local v0    # "position":I
    move/from16 v1, v24

    .end local v24    # "oldPosition":I
    .local v1, "oldPosition":I
    if-eq v0, v1, :cond_18

    .line 5350
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_0

    .line 5352
    .end local v1    # "oldPosition":I
    :cond_18
    move v10, v0

    goto/16 :goto_9

    .end local v0    # "position":I
    .end local v18    # "number":I
    .end local v25    # "fieldOffset":J
    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .end local p3    # "wireType":I
    .restart local v7    # "wireType":I
    .restart local v8    # "fieldOffset":J
    .restart local v10    # "position":I
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v21    # "typeAndOffset":I
    .local v22, "number":I
    :cond_19
    move/from16 p3, v7

    move-wide/from16 v25, v8

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    move/from16 v22, v21

    .end local v7    # "wireType":I
    .end local v8    # "fieldOffset":J
    .end local v10    # "position":I
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v21    # "typeAndOffset":I
    .restart local v18    # "number":I
    .local v22, "typeAndOffset":I
    .restart local v23    # "position":I
    .restart local v25    # "fieldOffset":J
    .restart local v27    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "wireType":I
    const/16 v0, 0x32

    if-ne v15, v0, :cond_1c

    .line 5353
    move/from16 v14, p3

    .end local p3    # "wireType":I
    .local v14, "wireType":I
    if-ne v14, v1, :cond_1b

    .line 5354
    move/from16 v9, v23

    .line 5355
    .local v9, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v25

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5356
    .end local v23    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v9, :cond_1a

    .line 5357
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_0

    .line 5359
    .end local v9    # "oldPosition":I
    :cond_1a
    move v10, v0

    move/from16 p3, v14

    goto :goto_9

    .line 5381
    .end local v0    # "position":I
    .end local v14    # "wireType":I
    .end local v15    # "fieldType":I
    .end local v18    # "number":I
    .end local v25    # "fieldOffset":J
    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .restart local v7    # "wireType":I
    .restart local v10    # "position":I
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v22, "number":I
    :cond_1b
    :goto_8
    move/from16 p3, v14

    move/from16 v10, v23

    .end local v7    # "wireType":I
    .end local v10    # "position":I
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v22    # "number":I
    .restart local v14    # "wireType":I
    .restart local v18    # "number":I
    .restart local v23    # "position":I
    .restart local v27    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_9

    .line 5361
    .end local v14    # "wireType":I
    .restart local v15    # "fieldType":I
    .local v22, "typeAndOffset":I
    .restart local v25    # "fieldOffset":J
    .restart local p3    # "wireType":I
    :cond_1c
    move/from16 v14, p3

    .end local p3    # "wireType":I
    .restart local v14    # "wireType":I
    move/from16 v13, v23

    .line 5362
    .local v13, "oldPosition":I
    nop

    .line 5363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v18

    move v7, v14

    move/from16 v8, v22

    move v9, v15

    move-wide/from16 v10, v25

    move/from16 v12, v19

    move v14, v13

    .end local v13    # "oldPosition":I
    .local v14, "oldPosition":I
    .restart local p3    # "wireType":I
    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5376
    .end local v23    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v14, :cond_1d

    .line 5377
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_0

    .line 5376
    :cond_1d
    move v10, v0

    .line 5381
    .end local v0    # "position":I
    .end local v14    # "oldPosition":I
    .end local v15    # "fieldType":I
    .end local v22    # "typeAndOffset":I
    .end local v25    # "fieldOffset":J
    .restart local v10    # "position":I
    :goto_9
    nop

    .line 5382
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5381
    move/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5383
    .end local v10    # "position":I
    .end local v18    # "number":I
    .end local p3    # "wireType":I
    .restart local v0    # "position":I
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_0

    .line 5384
    .end local v16    # "tag":I
    .end local v17    # "oldNumber":I
    .end local v19    # "pos":I
    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .local v1, "tag":I
    .local v2, "oldNumber":I
    .restart local v3    # "pos":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    :cond_1e
    move-object/from16 v27, v9

    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .restart local v27    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v4, p4

    if-ne v0, v4, :cond_1f

    .line 5387
    return v0

    .line 5385
    :cond_1f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 16
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "bufferPosition"    # I
    .param p9, "typeAndOffset"    # J
    .param p11, "fieldType"    # I
    .param p12, "fieldOffset"    # J
    .param p14, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4485
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 4486
    .local v2, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4487
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    .line 4488
    .local v3, "size":I
    nop

    .line 4490
    if-nez v3, :cond_0

    const/16 v4, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v3, 0x2

    .line 4489
    :goto_0
    invoke-interface {v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v2

    .line 4491
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v2

    goto :goto_1

    .line 4486
    .end local v3    # "size":I
    :cond_1
    move-object v8, v2

    .line 4493
    .end local v2    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .local v8, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :goto_1
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p11, :pswitch_data_0

    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .local v13, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_3

    .line 4630
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :pswitch_0
    const/4 v2, 0x3

    if-ne v11, v2, :cond_2

    .line 4631
    nop

    .line 4633
    invoke-direct {v0, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 4632
    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v8

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeGroupList(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .local v2, "position":I
    goto/16 :goto_4

    .line 4630
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :cond_2
    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4623
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :pswitch_1
    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_3

    .line 4624
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4625
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_3
    if-nez v11, :cond_4

    .line 4626
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4625
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_4
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4615
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :pswitch_2
    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_5

    .line 4616
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4617
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_5
    if-nez v11, :cond_6

    .line 4618
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4617
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_6
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4587
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :pswitch_3
    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_7

    .line 4588
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_2

    .line 4589
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_7
    if-nez v11, :cond_9

    .line 4590
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4594
    .end local p3    # "position":I
    .restart local v2    # "position":I
    :goto_2
    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 4595
    .local v3, "unknownFields":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_8

    .line 4600
    const/4 v3, 0x0

    .line 4602
    :cond_8
    nop

    .line 4606
    invoke-direct {v0, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    .line 4603
    move/from16 v14, p6

    invoke-static {v14, v13, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 4609
    if-eqz v3, :cond_13

    .line 4610
    move-object v4, v1

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iput-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    goto/16 :goto_4

    .line 4589
    .end local v2    # "position":I
    .end local v3    # "unknownFields":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    .restart local p3    # "position":I
    :cond_9
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4581
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :pswitch_4
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_12

    .line 4582
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4568
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_5
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_12

    .line 4569
    nop

    .line 4571
    invoke-direct {v0, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 4570
    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4559
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_6
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_12

    .line 4560
    const-wide/32 v2, 0x20000000

    and-long v2, p9, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 4561
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4563
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_a
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4552
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_7
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_b

    .line 4553
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4554
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_b
    if-nez v11, :cond_12

    .line 4555
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4544
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_8
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_c

    .line 4545
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4546
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_c
    if-ne v11, v2, :cond_12

    .line 4547
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4534
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_9
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_d

    .line 4535
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4536
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_d
    if-ne v11, v3, :cond_12

    .line 4537
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4524
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_a
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_e

    .line 4525
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4526
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_e
    if-nez v11, :cond_12

    .line 4527
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4514
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_b
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_f

    .line 4515
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4516
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_f
    if-nez v11, :cond_12

    .line 4517
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4504
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_c
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_10

    .line 4505
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4506
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_10
    if-ne v11, v2, :cond_12

    .line 4507
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4496
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_d
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_11

    .line 4497
    invoke-static {v9, v10, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4498
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_11
    if-ne v11, v3, :cond_12

    .line 4499
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4645
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_12
    :goto_3
    move v2, v10

    .end local p3    # "position":I
    .restart local v2    # "position":I
    :cond_13
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .locals 1
    .param p1, "number"    # I

    .line 5844
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    .line 5845
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 5847
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private positionForFieldNumber(II)I
    .locals 1
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 5851
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    .line 5852
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 5854
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private presenceMaskAndOffsetAt(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 5683
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .param p6, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TE;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5670
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p5, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<TE;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 5671
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5670
    invoke-interface {p4, v0, p5, p6}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 5672
    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TE;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5658
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p4, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<TE;>;"
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5659
    .local v0, "offset":J
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 5660
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 5659
    invoke-interface {p3, v2, p4, p5}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 5661
    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5628
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5630
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5631
    :cond_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_1

    .line 5634
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5638
    :cond_1
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5640
    :goto_0
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5643
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5644
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    .line 5645
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5644
    invoke-interface {p3, v0}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_0

    .line 5647
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readStringList(Ljava/util/List;)V

    .line 5649
    :goto_0
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 589
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 590
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 594
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 595
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 596
    return-object v4

    .line 594
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found. Known fields are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .locals 5
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5814
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    .line 5816
    return-void

    .line 5818
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5819
    .local v0, "presenceMaskAndOffset":I
    const/4 v1, 0x1

    ushr-int/lit8 v2, v0, 0x14

    shl-int/2addr v1, v2

    .line 5820
    .local v1, "presenceMask":I
    const v2, 0xfffff

    and-int/2addr v2, v0

    int-to-long v2, v2

    .line 5821
    .local v2, "presenceFieldOffset":J
    nop

    .line 5824
    invoke-static {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    or-int/2addr v4, v1

    .line 5821
    invoke-static {p1, v2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 5825
    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .locals 3
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 5839
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5840
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 5841
    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .locals 4
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 5858
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 5859
    .local v0, "max":I
    :goto_0
    if-gt p2, v0, :cond_2

    .line 5861
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 5862
    .local v1, "mid":I
    mul-int/lit8 v2, v1, 0x3

    .line 5863
    .local v2, "pos":I
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 5864
    .local v3, "midFieldNumber":I
    if-ne p1, v3, :cond_0

    .line 5866
    return v2

    .line 5868
    :cond_0
    if-ge p1, v3, :cond_1

    .line 5870
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 5873
    :cond_1
    add-int/lit8 p2, v1, 0x1

    .line 5875
    .end local v1    # "mid":I
    .end local v2    # "pos":I
    .end local v3    # "midFieldNumber":I
    :goto_1
    goto :goto_0

    .line 5876
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static storeFieldData(Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V
    .locals 9
    .param p0, "fi"    # Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    .param p1, "buffer"    # [I
    .param p2, "bufferIndex"    # I
    .param p3, "proto3"    # Z
    .param p4, "objects"    # [Ljava/lang/Object;

    .line 728
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getOneof()Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;

    move-result-object v0

    .line 729
    .local v0, "oneof":Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    .line 731
    .local v1, "typeId":I
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 732
    .local v2, "fieldOffset":I
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 733
    .local v3, "presenceFieldOffset":I
    const/4 v4, 0x0

    .local v4, "presenceMaskShift":I
    goto :goto_0

    .line 735
    .end local v1    # "typeId":I
    .end local v2    # "fieldOffset":I
    .end local v3    # "presenceFieldOffset":I
    .end local v4    # "presenceMaskShift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getType()Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    move-result-object v1

    .line 736
    .local v1, "type":Lcom/google/crypto/tink/shaded/protobuf/FieldType;
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 737
    .restart local v2    # "fieldOffset":I
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->id()I

    move-result v3

    .line 738
    .local v3, "typeId":I
    if-nez p3, :cond_1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->isMap()Z

    move-result v4

    if-nez v4, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 740
    .local v4, "presenceFieldOffset":I
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getPresenceMask()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v1, v3

    move v3, v4

    move v4, v5

    .local v5, "presenceMaskShift":I
    goto :goto_0

    .line 742
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "presenceMaskShift":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_2

    .line 743
    const/4 v4, 0x0

    .line 744
    .restart local v4    # "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    .restart local v5    # "presenceMaskShift":I
    goto :goto_0

    .line 746
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "presenceMaskShift":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 747
    .restart local v4    # "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    .line 752
    .local v1, "typeId":I
    .local v3, "presenceFieldOffset":I
    .local v4, "presenceMaskShift":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    .line 753
    add-int/lit8 v5, p2, 0x1

    .line 754
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    const/high16 v6, 0x20000000

    goto :goto_1

    :cond_3
    move v6, v7

    .line 755
    :goto_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v7, 0x10000000

    :cond_4
    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v2

    aput v6, p1, v5

    .line 758
    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v4, 0x14

    or-int/2addr v6, v3

    aput v6, p1, v5

    .line 760
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object v5

    .line 761
    .local v5, "messageFieldClass":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 762
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p4, v6

    .line 763
    if-eqz v5, :cond_5

    .line 764
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_2

    .line 765
    :cond_5
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 766
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    goto :goto_2

    .line 769
    :cond_6
    if-eqz v5, :cond_7

    .line 770
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_2

    .line 771
    :cond_7
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 772
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    .line 775
    :cond_8
    :goto_2
    return-void
.end method

.method private static type(I)I
    .locals 1
    .param p0, "value"    # I

    .line 5687
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private typeAndOffsetAt(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 5679
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 21
    .param p2, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2542
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2543
    .local v3, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v4, 0x0

    .line 2544
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v5, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v5, :cond_0

    .line 2545
    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v5

    .line 2546
    .local v5, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2547
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/util/Map$Entry;

    .line 2551
    .end local v5    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    :cond_0
    const/4 v5, -0x1

    .line 2552
    .local v5, "currentPresenceFieldOffset":I
    const/4 v6, 0x0

    .line 2553
    .local v6, "currentPresenceField":I
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    .line 2554
    .local v7, "bufferLength":I
    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2555
    .local v8, "unsafe":Lsun/misc/Unsafe;
    const/4 v9, 0x0

    .local v9, "pos":I
    :goto_0
    if-ge v9, v7, :cond_8

    .line 2556
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    .line 2557
    .local v11, "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v12

    .line 2558
    .local v12, "number":I
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v13

    .line 2560
    .local v13, "fieldType":I
    const/4 v14, 0x0

    .line 2561
    .local v14, "presenceMaskAndOffset":I
    const/4 v15, 0x0

    .line 2562
    .local v15, "presenceMask":I
    iget-boolean v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    move-object/from16 v17, v4

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .local v17, "nextExtension":Ljava/util/Map$Entry;
    if-nez v10, :cond_2

    const/16 v10, 0x11

    if-gt v13, v10, :cond_2

    .line 2563
    iget-object v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v9, 0x2

    aget v14, v10, v18

    .line 2564
    const v10, 0xfffff

    and-int/2addr v10, v14

    .line 2565
    .local v10, "presenceFieldOffset":I
    if-eq v10, v5, :cond_1

    .line 2566
    move v5, v10

    .line 2567
    move/from16 v19, v5

    .end local v5    # "currentPresenceFieldOffset":I
    .local v19, "currentPresenceFieldOffset":I
    int-to-long v4, v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v5, v19

    .line 2569
    .end local v19    # "currentPresenceFieldOffset":I
    .restart local v5    # "currentPresenceFieldOffset":I
    :cond_1
    ushr-int/lit8 v4, v14, 0x14

    const/16 v18, 0x1

    shl-int v15, v18, v4

    move-object/from16 v4, v17

    goto :goto_1

    .line 2573
    .end local v10    # "presenceFieldOffset":I
    :cond_2
    move-object/from16 v4, v17

    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v4    # "nextExtension":Ljava/util/Map$Entry;
    :goto_1
    if-eqz v4, :cond_4

    iget-object v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v10, v4}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v10

    if-gt v10, v12, :cond_4

    .line 2574
    iget-object v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v10, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2575
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    move-object v4, v10

    goto :goto_1

    .line 2577
    :cond_4
    move-object/from16 v17, v4

    move v10, v5

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .end local v5    # "currentPresenceFieldOffset":I
    .local v10, "currentPresenceFieldOffset":I
    .restart local v17    # "nextExtension":Ljava/util/Map$Entry;
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 2579
    .local v4, "offset":J
    move/from16 v19, v7

    .end local v7    # "bufferLength":I
    .local v19, "bufferLength":I
    const/4 v7, 0x0

    packed-switch v13, :pswitch_data_0

    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .local v16, "currentPresenceFieldOffset":I
    .local v20, "typeAndOffset":I
    goto/16 :goto_3

    .line 2899
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_0
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2900
    nop

    .line 2901
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    .line 2900
    invoke-interface {v2, v12, v7, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    .line 2899
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :cond_5
    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    goto/16 :goto_3

    .line 2894
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :pswitch_1
    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2895
    move/from16 v20, v11

    .end local v11    # "typeAndOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 2894
    .end local v20    # "typeAndOffset":I
    .restart local v11    # "typeAndOffset":I
    :cond_6
    move/from16 v20, v11

    .end local v11    # "typeAndOffset":I
    .restart local v20    # "typeAndOffset":I
    goto/16 :goto_3

    .line 2889
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2890
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 2884
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2885
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 2879
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2880
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 2874
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_5
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2875
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 2869
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_6
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2870
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 2864
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_7
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2865
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2858
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_8
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2859
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2860
    .local v7, "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 2861
    .end local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 2853
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_9
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2854
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2848
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_a
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2849
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2843
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_b
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2844
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 2838
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_c
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2839
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 2833
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_d
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2834
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 2828
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_e
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2829
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 2823
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_f
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2824
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 2818
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_10
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2819
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 2813
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_11
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2814
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 2810
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_12
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v2, v12, v7, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeMapHelper(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V

    .line 2811
    goto/16 :goto_3

    .line 2802
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_13
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2803
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2804
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2806
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v11

    .line 2802
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 2807
    goto/16 :goto_3

    .line 2798
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_14
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2799
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2798
    const/4 v11, 0x1

    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2800
    goto/16 :goto_3

    .line 2794
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_15
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2795
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2794
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2796
    goto/16 :goto_3

    .line 2790
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_16
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2791
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2790
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2792
    goto/16 :goto_3

    .line 2786
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_17
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2787
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2786
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2788
    goto/16 :goto_3

    .line 2782
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_18
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2783
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2782
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2784
    goto/16 :goto_3

    .line 2778
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_19
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2779
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2778
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2780
    goto/16 :goto_3

    .line 2774
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1a
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2775
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2774
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2776
    goto/16 :goto_3

    .line 2769
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2770
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2769
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2772
    goto/16 :goto_3

    .line 2765
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1c
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2766
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2765
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2767
    goto/16 :goto_3

    .line 2761
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1d
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2762
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2761
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2763
    goto/16 :goto_3

    .line 2757
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1e
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2758
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2757
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2759
    goto/16 :goto_3

    .line 2753
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1f
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2754
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2753
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2755
    goto/16 :goto_3

    .line 2749
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_20
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2750
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2749
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2751
    goto/16 :goto_3

    .line 2745
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_21
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2746
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2745
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2747
    goto/16 :goto_3

    .line 2740
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_22
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2741
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2740
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2742
    goto/16 :goto_3

    .line 2736
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_23
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2737
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2736
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2738
    goto/16 :goto_3

    .line 2732
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_24
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2733
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2732
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2734
    goto/16 :goto_3

    .line 2728
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_25
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2729
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2728
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2730
    goto/16 :goto_3

    .line 2724
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_26
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2725
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2724
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2726
    goto/16 :goto_3

    .line 2720
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_27
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2721
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2720
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2722
    goto/16 :goto_3

    .line 2716
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_28
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2717
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2716
    invoke-static {v7, v10, v2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2718
    goto/16 :goto_3

    .line 2709
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_29
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2710
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2711
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2713
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v11

    .line 2709
    invoke-static {v7, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 2714
    goto/16 :goto_3

    .line 2705
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2a
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2706
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2705
    invoke-static {v7, v10, v2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2707
    goto/16 :goto_3

    .line 2701
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2b
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2702
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2701
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2703
    goto/16 :goto_3

    .line 2697
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2c
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2698
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2697
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2699
    goto/16 :goto_3

    .line 2693
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2d
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2694
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2693
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2695
    goto/16 :goto_3

    .line 2689
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2e
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2690
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2689
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2691
    goto/16 :goto_3

    .line 2685
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2f
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2686
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2685
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2687
    goto/16 :goto_3

    .line 2681
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_30
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2682
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2681
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2683
    goto/16 :goto_3

    .line 2677
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_31
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2678
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2677
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2679
    goto/16 :goto_3

    .line 2673
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_32
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2674
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2673
    invoke-static {v10, v11, v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 2675
    goto/16 :goto_3

    .line 2667
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_33
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2668
    nop

    .line 2669
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    .line 2668
    invoke-interface {v2, v12, v7, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    .line 2662
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_34
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2663
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 2657
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_35
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2658
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 2652
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_36
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2653
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 2647
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_37
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2648
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 2642
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_38
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2643
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 2637
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_39
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2638
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 2632
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3a
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2633
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2626
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3b
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2627
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2628
    .restart local v7    # "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 2629
    .end local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 2621
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3c
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2622
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2616
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3d
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2617
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2611
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3e
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2612
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 2606
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3f
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2607
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 2601
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_40
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2602
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 2596
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_41
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2597
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 2591
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_42
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2592
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 2586
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_43
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2587
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 2581
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_44
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2582
    invoke-static {v1, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    .line 2555
    .end local v4    # "offset":J
    .end local v12    # "number":I
    .end local v13    # "fieldType":I
    .end local v14    # "presenceMaskAndOffset":I
    .end local v15    # "presenceMask":I
    .end local v20    # "typeAndOffset":I
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x3

    move/from16 v5, v16

    move-object/from16 v4, v17

    move/from16 v7, v19

    goto/16 :goto_0

    .end local v16    # "currentPresenceFieldOffset":I
    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .end local v19    # "bufferLength":I
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    .restart local v5    # "currentPresenceFieldOffset":I
    .local v7, "bufferLength":I
    :cond_8
    move-object/from16 v17, v4

    move/from16 v19, v7

    .line 2909
    .end local v7    # "bufferLength":I
    .end local v9    # "pos":I
    .restart local v19    # "bufferLength":I
    :goto_4
    if-eqz v4, :cond_a

    .line 2910
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2911
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    move-object v4, v7

    goto :goto_4

    .line 2913
    :cond_a
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v7, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2914
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 11
    .param p2, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2918
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 2919
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 2920
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_0

    .line 2921
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v2

    .line 2922
    .local v2, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2923
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2924
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 2928
    .end local v2    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    :cond_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    .line 2929
    .local v2, "bufferLength":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_4

    .line 2930
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 2931
    .local v5, "typeAndOffset":I
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 2934
    .local v6, "number":I
    :goto_1
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v6, :cond_2

    .line 2935
    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2936
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v7, v4

    :goto_2
    move-object v1, v7

    goto :goto_1

    .line 2939
    :cond_2
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 3351
    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3352
    nop

    .line 3354
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3355
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    .line 3352
    invoke-interface {p2, v6, v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3346
    :pswitch_1
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3347
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3341
    :pswitch_2
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3342
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3336
    :pswitch_3
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3337
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3331
    :pswitch_4
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3332
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3326
    :pswitch_5
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3327
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3321
    :pswitch_6
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3322
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3315
    :pswitch_7
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3316
    nop

    .line 3317
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 3316
    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3309
    :pswitch_8
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3310
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3311
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3312
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 3304
    :pswitch_9
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3305
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3299
    :pswitch_a
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3300
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3294
    :pswitch_b
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3295
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 3289
    :pswitch_c
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3290
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 3284
    :pswitch_d
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3285
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 3279
    :pswitch_e
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3280
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 3274
    :pswitch_f
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3275
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 3269
    :pswitch_10
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3270
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 3264
    :pswitch_11
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3265
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 3261
    :pswitch_12
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeMapHelper(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3262
    goto/16 :goto_3

    .line 3253
    :pswitch_13
    nop

    .line 3254
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3255
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3257
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v8

    .line 3253
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3258
    goto/16 :goto_3

    .line 3246
    :pswitch_14
    nop

    .line 3247
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3248
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3246
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3251
    goto/16 :goto_3

    .line 3239
    :pswitch_15
    nop

    .line 3240
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3241
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3239
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3244
    goto/16 :goto_3

    .line 3232
    :pswitch_16
    nop

    .line 3233
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3234
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3232
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3237
    goto/16 :goto_3

    .line 3225
    :pswitch_17
    nop

    .line 3226
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3227
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3225
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3230
    goto/16 :goto_3

    .line 3218
    :pswitch_18
    nop

    .line 3219
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3220
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3218
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3223
    goto/16 :goto_3

    .line 3211
    :pswitch_19
    nop

    .line 3212
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3213
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3211
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3216
    goto/16 :goto_3

    .line 3204
    :pswitch_1a
    nop

    .line 3205
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3206
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3204
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3209
    goto/16 :goto_3

    .line 3196
    :pswitch_1b
    nop

    .line 3197
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3198
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3196
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3202
    goto/16 :goto_3

    .line 3189
    :pswitch_1c
    nop

    .line 3190
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3191
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3189
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3194
    goto/16 :goto_3

    .line 3182
    :pswitch_1d
    nop

    .line 3183
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3184
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3182
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3187
    goto/16 :goto_3

    .line 3175
    :pswitch_1e
    nop

    .line 3176
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3177
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3175
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3180
    goto/16 :goto_3

    .line 3168
    :pswitch_1f
    nop

    .line 3169
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3170
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3168
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3173
    goto/16 :goto_3

    .line 3161
    :pswitch_20
    nop

    .line 3162
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3163
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3161
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3166
    goto/16 :goto_3

    .line 3154
    :pswitch_21
    nop

    .line 3155
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3156
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3154
    invoke-static {v4, v8, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3159
    goto/16 :goto_3

    .line 3146
    :pswitch_22
    nop

    .line 3147
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3148
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3146
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3151
    goto/16 :goto_3

    .line 3139
    :pswitch_23
    nop

    .line 3140
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3141
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3139
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3144
    goto/16 :goto_3

    .line 3132
    :pswitch_24
    nop

    .line 3133
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3134
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3132
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3137
    goto/16 :goto_3

    .line 3125
    :pswitch_25
    nop

    .line 3126
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3127
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3125
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3130
    goto/16 :goto_3

    .line 3118
    :pswitch_26
    nop

    .line 3119
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3120
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3118
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3123
    goto/16 :goto_3

    .line 3111
    :pswitch_27
    nop

    .line 3112
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3113
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3111
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3116
    goto/16 :goto_3

    .line 3105
    :pswitch_28
    nop

    .line 3106
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3107
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3105
    invoke-static {v4, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3109
    goto/16 :goto_3

    .line 3098
    :pswitch_29
    nop

    .line 3099
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3100
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3102
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v8

    .line 3098
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3103
    goto/16 :goto_3

    .line 3092
    :pswitch_2a
    nop

    .line 3093
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3094
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3092
    invoke-static {v4, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3096
    goto/16 :goto_3

    .line 3085
    :pswitch_2b
    nop

    .line 3086
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3087
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3085
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3090
    goto/16 :goto_3

    .line 3078
    :pswitch_2c
    nop

    .line 3079
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3080
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3078
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3083
    goto/16 :goto_3

    .line 3071
    :pswitch_2d
    nop

    .line 3072
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3073
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3071
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3076
    goto/16 :goto_3

    .line 3064
    :pswitch_2e
    nop

    .line 3065
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3066
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3064
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3069
    goto/16 :goto_3

    .line 3057
    :pswitch_2f
    nop

    .line 3058
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3059
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3057
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3062
    goto/16 :goto_3

    .line 3050
    :pswitch_30
    nop

    .line 3051
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3052
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3050
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3055
    goto/16 :goto_3

    .line 3043
    :pswitch_31
    nop

    .line 3044
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3045
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3043
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3048
    goto/16 :goto_3

    .line 3036
    :pswitch_32
    nop

    .line 3037
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3038
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3036
    invoke-static {v4, v7, p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3041
    goto/16 :goto_3

    .line 3028
    :pswitch_33
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3029
    nop

    .line 3031
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3032
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    .line 3029
    invoke-interface {p2, v6, v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3023
    :pswitch_34
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3024
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3018
    :pswitch_35
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3019
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3013
    :pswitch_36
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3014
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3008
    :pswitch_37
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3009
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3003
    :pswitch_38
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3004
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 2998
    :pswitch_39
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2999
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 2992
    :pswitch_3a
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2993
    nop

    .line 2994
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 2993
    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2986
    :pswitch_3b
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2987
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2988
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 2989
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 2981
    :pswitch_3c
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2982
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2976
    :pswitch_3d
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2977
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2971
    :pswitch_3e
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2972
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 2966
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2967
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 2961
    :pswitch_40
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2962
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 2956
    :pswitch_41
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2957
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 2951
    :pswitch_42
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2952
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 2946
    :pswitch_43
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2947
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 2941
    :pswitch_44
    invoke-direct {p0, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2942
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    .line 2929
    .end local v5    # "typeAndOffset":I
    .end local v6    # "number":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 3363
    .end local v3    # "pos":I
    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 3364
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3365
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_5
    move-object v3, v4

    :goto_5
    move-object v1, v3

    goto :goto_4

    .line 3367
    :cond_6
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3368
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 10
    .param p2, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3372
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3374
    const/4 v0, 0x0

    .line 3375
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 3376
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_0

    .line 3377
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v2

    .line 3378
    .local v2, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3379
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 3384
    .end local v2    # "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    :cond_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    .local v2, "pos":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_4

    .line 3385
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 3386
    .local v4, "typeAndOffset":I
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3389
    .local v5, "number":I
    :goto_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_2

    .line 3390
    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3391
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v6, v3

    :goto_2
    move-object v1, v6

    goto :goto_1

    .line 3394
    :cond_2
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3805
    :pswitch_0
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3806
    nop

    .line 3808
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3809
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v6

    .line 3806
    invoke-interface {p2, v5, v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3800
    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3801
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3795
    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3796
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3790
    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3791
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3785
    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3786
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3780
    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3781
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3775
    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3776
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3769
    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3770
    nop

    .line 3771
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 3770
    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3763
    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3764
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3765
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3766
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 3758
    :pswitch_9
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3759
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3753
    :pswitch_a
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3754
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3748
    :pswitch_b
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3749
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 3743
    :pswitch_c
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3744
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 3738
    :pswitch_d
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3739
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 3733
    :pswitch_e
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3734
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 3728
    :pswitch_f
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3729
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 3723
    :pswitch_10
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3724
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 3718
    :pswitch_11
    invoke-direct {p0, p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3719
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 3715
    :pswitch_12
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeMapHelper(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3716
    goto/16 :goto_3

    .line 3707
    :pswitch_13
    nop

    .line 3708
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3709
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3711
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    .line 3707
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3712
    goto/16 :goto_3

    .line 3700
    :pswitch_14
    nop

    .line 3701
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3702
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3700
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3705
    goto/16 :goto_3

    .line 3693
    :pswitch_15
    nop

    .line 3694
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3695
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3693
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3698
    goto/16 :goto_3

    .line 3686
    :pswitch_16
    nop

    .line 3687
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3688
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3686
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3691
    goto/16 :goto_3

    .line 3679
    :pswitch_17
    nop

    .line 3680
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3681
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3679
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3684
    goto/16 :goto_3

    .line 3672
    :pswitch_18
    nop

    .line 3673
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3674
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3672
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3677
    goto/16 :goto_3

    .line 3665
    :pswitch_19
    nop

    .line 3666
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3667
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3665
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3670
    goto/16 :goto_3

    .line 3658
    :pswitch_1a
    nop

    .line 3659
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3660
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3658
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3663
    goto/16 :goto_3

    .line 3650
    :pswitch_1b
    nop

    .line 3651
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3652
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3650
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3656
    goto/16 :goto_3

    .line 3643
    :pswitch_1c
    nop

    .line 3644
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3645
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3643
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3648
    goto/16 :goto_3

    .line 3636
    :pswitch_1d
    nop

    .line 3637
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3638
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3636
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3641
    goto/16 :goto_3

    .line 3629
    :pswitch_1e
    nop

    .line 3630
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3631
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3629
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3634
    goto/16 :goto_3

    .line 3622
    :pswitch_1f
    nop

    .line 3623
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3624
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3622
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3627
    goto/16 :goto_3

    .line 3615
    :pswitch_20
    nop

    .line 3616
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3617
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3615
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3620
    goto/16 :goto_3

    .line 3608
    :pswitch_21
    nop

    .line 3609
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3610
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3608
    invoke-static {v3, v7, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3613
    goto/16 :goto_3

    .line 3601
    :pswitch_22
    nop

    .line 3602
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3603
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3601
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3606
    goto/16 :goto_3

    .line 3594
    :pswitch_23
    nop

    .line 3595
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3596
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3594
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3599
    goto/16 :goto_3

    .line 3587
    :pswitch_24
    nop

    .line 3588
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3589
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3587
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3592
    goto/16 :goto_3

    .line 3580
    :pswitch_25
    nop

    .line 3581
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3582
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3580
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3585
    goto/16 :goto_3

    .line 3573
    :pswitch_26
    nop

    .line 3574
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3575
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3573
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3578
    goto/16 :goto_3

    .line 3566
    :pswitch_27
    nop

    .line 3567
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3568
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3566
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3571
    goto/16 :goto_3

    .line 3560
    :pswitch_28
    nop

    .line 3561
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3562
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3560
    invoke-static {v3, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3564
    goto/16 :goto_3

    .line 3553
    :pswitch_29
    nop

    .line 3554
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3555
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3557
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    .line 3553
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3558
    goto/16 :goto_3

    .line 3547
    :pswitch_2a
    nop

    .line 3548
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3549
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3547
    invoke-static {v3, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3551
    goto/16 :goto_3

    .line 3540
    :pswitch_2b
    nop

    .line 3541
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3542
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3540
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3545
    goto/16 :goto_3

    .line 3533
    :pswitch_2c
    nop

    .line 3534
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3535
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3533
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3538
    goto/16 :goto_3

    .line 3526
    :pswitch_2d
    nop

    .line 3527
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3528
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3526
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3531
    goto/16 :goto_3

    .line 3519
    :pswitch_2e
    nop

    .line 3520
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3521
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3519
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3524
    goto/16 :goto_3

    .line 3512
    :pswitch_2f
    nop

    .line 3513
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3514
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3512
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3517
    goto/16 :goto_3

    .line 3505
    :pswitch_30
    nop

    .line 3506
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3507
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3505
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3510
    goto/16 :goto_3

    .line 3498
    :pswitch_31
    nop

    .line 3499
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3500
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3498
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3503
    goto/16 :goto_3

    .line 3491
    :pswitch_32
    nop

    .line 3492
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3493
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3491
    invoke-static {v3, v6, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 3496
    goto/16 :goto_3

    .line 3483
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3484
    nop

    .line 3486
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3487
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v6

    .line 3484
    invoke-interface {p2, v5, v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3478
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3479
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3473
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3474
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3468
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3469
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3463
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3464
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3458
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3459
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3453
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3454
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3447
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3448
    nop

    .line 3449
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 3448
    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3441
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3442
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3443
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 3444
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 3436
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3437
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3431
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3432
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3426
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3427
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 3421
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3422
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 3416
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3417
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 3411
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3412
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 3406
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3407
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 3401
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3402
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 3396
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3397
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    .line 3384
    .end local v4    # "typeAndOffset":I
    .end local v5    # "number":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_0

    .line 3816
    .end local v2    # "pos":I
    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 3817
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3818
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    move-object v1, v2

    goto :goto_4

    .line 3820
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private writeMapHelper(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .param p2, "number"    # I
    .param p3, "mapField"    # Ljava/lang/Object;
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3825
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    if-eqz p3, :cond_0

    .line 3826
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 3828
    invoke-direct {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    .line 3829
    invoke-interface {v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 3826
    invoke-interface {p1, p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMap(ILcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 3831
    :cond_0
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5620
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5621
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 5623
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p3, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 5625
    :goto_0
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3835
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 3836
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 785
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 786
    .local v0, "bufferLength":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 787
    invoke-direct {p0, p1, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 788
    return v2

    .line 786
    :cond_0
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 792
    .end local v1    # "pos":I
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 793
    .local v1, "messageUnknown":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 794
    .local v3, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 795
    return v2

    .line 798
    :cond_2
    iget-boolean v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_3

    .line 799
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v2

    .line 800
    .local v2, "messageExtensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v4

    .line 801
    .local v4, "otherExtensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 803
    .end local v2    # "messageExtensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    .end local v4    # "otherExtensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<*>;"
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method getSchemaSize()I
    .locals 1

    .line 5880
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1409
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 938
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 939
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    .line 940
    .local v1, "bufferLength":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 941
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 942
    .local v3, "typeAndOffset":I
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 944
    .local v4, "entryNumber":I
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 946
    .local v5, "offset":J
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 1146
    :pswitch_0
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1147
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1148
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1149
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .local v8, "hashCode":I
    move v0, v8

    goto/16 :goto_1

    .line 1141
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1142
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_1

    .line 1136
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_2
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1137
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1131
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_3
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1132
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1126
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_4
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1127
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1121
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_5
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1122
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1116
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_6
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1117
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1111
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_7
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1112
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1105
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_8
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1106
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1107
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1108
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .restart local v8    # "hashCode":I
    move v0, v8

    goto/16 :goto_1

    .line 1099
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_9
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1100
    mul-int/lit8 v7, v0, 0x35

    .line 1101
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_1

    .line 1094
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_a
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1095
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1089
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1090
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1084
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1085
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1079
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1080
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1074
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1075
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1069
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1070
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1064
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_10
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1065
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1057
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_11
    invoke-direct {p0, p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1058
    mul-int/lit8 v7, v0, 0x35

    .line 1060
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1054
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_12
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1055
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1051
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_13
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1052
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1011
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_14
    const/16 v7, 0x25

    .line 1012
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1013
    .local v8, "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 1014
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1016
    :cond_0
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 1017
    .end local v0    # "hashCode":I
    .local v9, "hashCode":I
    move v0, v9

    goto/16 :goto_1

    .line 1006
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_15
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1007
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1003
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_16
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1004
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1000
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_17
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1001
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 997
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_18
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 998
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 994
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_19
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 995
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 991
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 992
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 988
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1b
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 989
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 979
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1c
    const/16 v7, 0x25

    .line 980
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 981
    .restart local v8    # "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 982
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 984
    :cond_1
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 985
    .end local v0    # "hashCode":I
    .restart local v9    # "hashCode":I
    move v0, v9

    goto/16 :goto_1

    .line 975
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1d
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 976
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 972
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1e
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 973
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 969
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1f
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 970
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 966
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_20
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 967
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 963
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_21
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 964
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 960
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_22
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 961
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 957
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_23
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 958
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 954
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_24
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 955
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 948
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_25
    mul-int/lit8 v7, v0, 0x35

    .line 951
    invoke-static {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 950
    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 952
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    .line 940
    .end local v3    # "typeAndOffset":I
    .end local v4    # "entryNumber":I
    .end local v5    # "offset":J
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 1157
    .end local v2    # "pos":I
    :cond_3
    mul-int/lit8 v2, v0, 0x35

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1159
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_4

    .line 1160
    mul-int/lit8 v0, v2, 0x35

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 1163
    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 5505
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    .line 5506
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 5507
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_7

    .line 5508
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 5509
    .local v3, "pos":I
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 5511
    .local v6, "number":I
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 5513
    .local v7, "typeAndOffset":I
    const/4 v8, 0x0

    .line 5514
    .local v8, "presenceMaskAndOffset":I
    const/4 v9, 0x0

    .line 5515
    .local v9, "presenceMask":I
    iget-boolean v10, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    if-nez v10, :cond_0

    .line 5516
    iget-object v10, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v3, 0x2

    aget v8, v10, v11

    .line 5517
    const v10, 0xfffff

    and-int/2addr v10, v8

    .line 5518
    .local v10, "presenceFieldOffset":I
    ushr-int/lit8 v11, v8, 0x14

    shl-int v9, v4, v11

    .line 5519
    if-eq v10, v0, :cond_0

    .line 5520
    move v0, v10

    .line 5521
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v4, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 5525
    .end local v10    # "presenceFieldOffset":I
    :cond_0
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isRequired(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5526
    invoke-direct {p0, p1, v3, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5527
    return v5

    .line 5534
    :cond_1
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/16 v10, 0x9

    if-eq v4, v10, :cond_5

    const/16 v10, 0x11

    if-eq v4, v10, :cond_5

    const/16 v10, 0x1b

    if-eq v4, v10, :cond_4

    const/16 v10, 0x3c

    if-eq v4, v10, :cond_3

    const/16 v10, 0x44

    if-eq v4, v10, :cond_3

    const/16 v10, 0x31

    if-eq v4, v10, :cond_4

    const/16 v10, 0x32

    if-eq v4, v10, :cond_2

    goto :goto_1

    .line 5556
    :cond_2
    invoke-direct {p0, p1, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5557
    return v5

    .line 5550
    :cond_3
    invoke-direct {p0, p1, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5551
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5552
    return v5

    .line 5544
    :cond_4
    invoke-direct {p0, p1, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5545
    return v5

    .line 5537
    :cond_5
    invoke-direct {p0, p1, v3, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5538
    invoke-direct {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5539
    return v5

    .line 5507
    .end local v3    # "pos":I
    .end local v6    # "number":I
    .end local v7    # "typeAndOffset":I
    .end local v8    # "presenceMaskAndOffset":I
    .end local v9    # "presenceMask":I
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5565
    .end local v2    # "i":I
    :cond_7
    iget-boolean v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_8

    .line 5566
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    .line 5567
    return v5

    .line 5571
    :cond_8
    return v4
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5403
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_1

    .line 5404
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 5405
    .local v1, "offset":J
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5406
    .local v3, "mapField":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 5407
    goto :goto_1

    .line 5409
    :cond_0
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5403
    .end local v1    # "offset":J
    .end local v3    # "mapField":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5411
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    .line 5412
    .local v0, "length":I
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 5413
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->listFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    .line 5412
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5415
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5416
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_3

    .line 5417
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5419
    :cond_3
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p2, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3841
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_0

    .line 3844
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeFromHelper(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 3845
    return-void

    .line 3842
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1168
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_2

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1173
    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1171
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1176
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1178
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->extensionSchema:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1181
    :cond_1
    return-void

    .line 1169
    :cond_2
    const/4 v0, 0x0

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V
    .locals 8
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5393
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    .line 5394
    invoke-direct/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    goto :goto_0

    .line 5396
    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    .line 5398
    :goto_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 780
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 34
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "endGroup"    # I
    .param p6, "registers"    # Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4869
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4870
    .local v10, "unsafe":Lsun/misc/Unsafe;
    const/4 v0, -0x1

    .line 4871
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 4872
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    .line 4873
    .local v2, "tag":I
    const/4 v3, -0x1

    .line 4874
    .local v3, "oldNumber":I
    const/4 v4, 0x0

    move v8, v0

    move v7, v1

    move/from16 v0, p3

    .line 4875
    .end local v1    # "currentPresenceField":I
    .end local p3    # "position":I
    .local v0, "position":I
    .local v4, "pos":I
    .local v7, "currentPresenceField":I
    .local v8, "currentPresenceFieldOffset":I
    :goto_0
    if-ge v0, v13, :cond_24

    .line 4876
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    aget-byte v0, v12, v0

    .line 4877
    .end local v2    # "tag":I
    .local v0, "tag":I
    if-gez v0, :cond_0

    .line 4878
    invoke-static {v0, v12, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4879
    iget v0, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    move v5, v1

    goto :goto_1

    .line 4877
    :cond_0
    move v2, v0

    move v5, v1

    .line 4881
    .end local v0    # "tag":I
    .end local v1    # "position":I
    .restart local v2    # "tag":I
    .local v5, "position":I
    :goto_1
    ushr-int/lit8 v1, v2, 0x3

    .line 4882
    .local v1, "number":I
    and-int/lit8 v0, v2, 0x7

    .line 4883
    .local v0, "wireType":I
    if-le v1, v3, :cond_1

    .line 4884
    div-int/lit8 v6, v4, 0x3

    invoke-direct {v15, v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    move v6, v4

    goto :goto_2

    .line 4886
    :cond_1
    invoke-direct {v15, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    move v6, v4

    .line 4888
    .end local v4    # "pos":I
    .local v6, "pos":I
    :goto_2
    move/from16 v16, v1

    .line 4889
    .end local v3    # "oldNumber":I
    .local v16, "oldNumber":I
    const/4 v3, -0x1

    if-ne v6, v3, :cond_2

    .line 4891
    const/4 v3, 0x0

    move v15, v0

    move/from16 v24, v1

    move/from16 v21, v2

    move/from16 v19, v3

    move/from16 v18, v5

    move/from16 v17, v7

    move-object/from16 v32, v10

    .end local v6    # "pos":I
    .local v3, "pos":I
    goto/16 :goto_e

    .line 4893
    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    :cond_2
    iget-object v3, v15, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v4, v6, 0x1

    aget v4, v3, v4

    .line 4894
    .local v4, "typeAndOffset":I
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->type(I)I

    move-result v3

    .line 4895
    .local v3, "fieldType":I
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->offset(I)J

    move-result-wide v11

    .line 4896
    .local v11, "fieldOffset":J
    move/from16 v17, v2

    .end local v2    # "tag":I
    .local v17, "tag":I
    const/16 v2, 0x11

    move/from16 v18, v4

    .end local v4    # "typeAndOffset":I
    .local v18, "typeAndOffset":I
    if-gt v3, v2, :cond_16

    .line 4898
    iget-object v2, v15, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v19, v6, 0x2

    aget v19, v2, v19

    .line 4899
    .local v19, "presenceMaskAndOffset":I
    ushr-int/lit8 v2, v19, 0x14

    const/4 v4, 0x1

    shl-int v21, v4, v2

    .line 4900
    .local v21, "presenceMask":I
    const v2, 0xfffff

    and-int v2, v19, v2

    .line 4903
    .local v2, "presenceFieldOffset":I
    if-eq v2, v8, :cond_4

    .line 4904
    const/4 v4, -0x1

    if-eq v8, v4, :cond_3

    .line 4905
    move/from16 p3, v5

    .end local v5    # "position":I
    .restart local p3    # "position":I
    int-to-long v4, v8

    invoke-virtual {v10, v14, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 4904
    .end local p3    # "position":I
    .restart local v5    # "position":I
    :cond_3
    move/from16 p3, v5

    .line 4907
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :goto_3
    move v4, v2

    .line 4908
    .end local v8    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    move v8, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v8    # "currentPresenceFieldOffset":I
    int-to-long v4, v2

    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v7, v4

    .end local v7    # "currentPresenceField":I
    .local v4, "currentPresenceField":I
    goto :goto_4

    .line 4903
    .end local v4    # "currentPresenceField":I
    .end local p3    # "position":I
    .restart local v5    # "position":I
    .restart local v7    # "currentPresenceField":I
    :cond_4
    move/from16 p3, v5

    .line 4910
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :goto_4
    const/4 v4, 0x5

    packed-switch v3, :pswitch_data_0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .local v9, "wireType":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .local v24, "number":I
    .local v25, "currentPresenceFieldOffset":I
    .local v26, "fieldType":I
    .local v27, "pos":I
    .local v30, "typeAndOffset":I
    goto/16 :goto_a

    .line 5044
    .end local v9    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "pos":I
    .end local v30    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 5045
    shl-int/lit8 v4, v1, 0x3

    or-int/lit8 v20, v4, 0x4

    .line 5046
    .local v20, "endTag":I
    nop

    .line 5048
    invoke-direct {v15, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    .line 5047
    move v5, v0

    .end local v0    # "wireType":I
    .local v5, "wireType":I
    move-object v0, v4

    move/from16 v24, v1

    .end local v1    # "number":I
    .restart local v24    # "number":I
    move-object/from16 v1, p2

    move/from16 v4, v17

    move/from16 v17, v2

    .end local v2    # "presenceFieldOffset":I
    .local v4, "tag":I
    .local v17, "presenceFieldOffset":I
    move/from16 v2, p3

    move/from16 v25, v8

    move v8, v3

    .end local v3    # "fieldType":I
    .local v8, "fieldType":I
    .restart local v25    # "currentPresenceFieldOffset":I
    move/from16 v3, p4

    move/from16 v26, v8

    move/from16 v27, v18

    move v8, v4

    .end local v4    # "tag":I
    .end local v18    # "typeAndOffset":I
    .local v8, "tag":I
    .restart local v26    # "fieldType":I
    .local v27, "typeAndOffset":I
    move/from16 v4, v20

    move v13, v5

    move/from16 v18, v8

    move/from16 v8, p3

    .end local v5    # "wireType":I
    .end local p3    # "position":I
    .local v8, "position":I
    .local v13, "wireType":I
    .local v18, "tag":I
    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5049
    .end local v8    # "position":I
    .local v0, "position":I
    and-int v1, v7, v21

    if-nez v1, :cond_5

    .line 5050
    iget-object v1, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 5052
    :cond_5
    nop

    .line 5056
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5055
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5052
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5059
    :goto_5
    or-int v7, v7, v21

    .line 5060
    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_0

    .line 5044
    .end local v13    # "wireType":I
    .end local v20    # "endTag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :cond_6
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    move/from16 v30, v27

    move/from16 v27, v6

    move-object v6, v10

    move-wide v10, v11

    move-object/from16 v12, p2

    move/from16 v33, v13

    move-object v13, v9

    move/from16 v9, v33

    goto/16 :goto_a

    .line 5034
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_1
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local p3    # "position":I
    .local v8, "position":I
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    if-nez v13, :cond_7

    .line 5035
    move-wide v4, v11

    move-object/from16 v12, p2

    .end local v11    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-static {v12, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 5036
    iget-wide v0, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5037
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v22

    .line 5036
    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-object/from16 v28, v10

    move-wide v10, v4

    .end local v4    # "fieldOffset":J
    .local v10, "fieldOffset":J
    .local v28, "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5039
    or-int v7, v7, v21

    .line 5040
    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v0, v8

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move-object/from16 v10, v28

    goto/16 :goto_0

    .line 5034
    .end local v28    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    :cond_7
    move-object/from16 v28, v10

    move-wide v10, v11

    move-object/from16 v12, p2

    .end local v11    # "fieldOffset":J
    .local v10, "fieldOffset":J
    .restart local v28    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v30, v27

    move/from16 v27, v6

    move-object/from16 v6, v28

    move/from16 v33, v13

    move-object v13, v9

    move/from16 v9, v33

    goto/16 :goto_a

    .line 5025
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .end local v28    # "unsafe":Lsun/misc/Unsafe;
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_2
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object/from16 v28, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v8, "position":I
    .local v10, "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    .restart local v28    # "unsafe":Lsun/misc/Unsafe;
    if-nez v13, :cond_8

    .line 5026
    invoke-static {v12, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5027
    .end local v8    # "position":I
    .local v0, "position":I
    iget v1, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5028
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5027
    move-object/from16 v5, v28

    .end local v28    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5029
    or-int v7, v7, v21

    .line 5030
    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_0

    .line 5025
    .end local v0    # "position":I
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "position":I
    .restart local v28    # "unsafe":Lsun/misc/Unsafe;
    :cond_8
    move-object/from16 v5, v28

    .end local v28    # "unsafe":Lsun/misc/Unsafe;
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v30, v27

    move/from16 v27, v6

    move-object v6, v5

    move/from16 v33, v13

    move-object v13, v9

    move/from16 v9, v33

    goto/16 :goto_a

    .line 5010
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_3
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .local v10, "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    if-nez v13, :cond_b

    .line 5011
    invoke-static {v12, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5012
    .end local v8    # "position":I
    .local v0, "position":I
    iget v1, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5013
    .local v1, "enumValue":I
    invoke-direct {v15, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 5014
    .local v2, "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    if-eqz v2, :cond_a

    invoke-interface {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v9, v18

    goto :goto_6

    .line 5019
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v3

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v9, v18

    .end local v18    # "tag":I
    .local v9, "tag":I
    invoke-virtual {v3, v9, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 5021
    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_0

    .line 5014
    .end local v9    # "tag":I
    .restart local v18    # "tag":I
    :cond_a
    move/from16 v9, v18

    .line 5015
    .end local v18    # "tag":I
    .restart local v9    # "tag":I
    :goto_6
    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5016
    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_0

    .line 5010
    .end local v0    # "position":I
    .end local v1    # "enumValue":I
    .end local v2    # "enumVerifier":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .end local v9    # "tag":I
    .restart local v8    # "position":I
    .restart local v18    # "tag":I
    :cond_b
    move/from16 v9, v18

    .end local v18    # "tag":I
    .restart local v9    # "tag":I
    move v9, v13

    move/from16 v30, v27

    move-object/from16 v13, p6

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_a

    .line 5002
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "tag":I
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .local v1, "number":I
    .local v2, "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_4
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v9, v17

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v10, "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v13, v0, :cond_c

    .line 5003
    move-object/from16 v2, p6

    invoke-static {v12, v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5004
    .end local v8    # "position":I
    .local v0, "position":I
    iget-object v1, v2, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5005
    or-int v7, v7, v21

    .line 5006
    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_0

    .line 5002
    .end local v0    # "position":I
    .restart local v8    # "position":I
    :cond_c
    move-object/from16 v2, p6

    move/from16 v18, v9

    move v9, v13

    move/from16 v30, v27

    move-object v13, v2

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_a

    .line 4984
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "tag":I
    .end local v13    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_5
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v10, "fieldOffset":J
    .restart local v13    # "wireType":I
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v13, v0, :cond_e

    .line 4985
    nop

    .line 4987
    invoke-direct {v15, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 4986
    move v3, v13

    move/from16 v13, p4

    .end local v13    # "wireType":I
    .local v3, "wireType":I
    invoke-static {v0, v12, v8, v13, v2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4988
    .end local v8    # "position":I
    .local v0, "position":I
    and-int v1, v7, v21

    if-nez v1, :cond_d

    .line 4989
    iget-object v1, v2, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 4991
    :cond_d
    nop

    .line 4995
    invoke-virtual {v5, v14, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4994
    invoke-static {v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4991
    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4997
    :goto_7
    or-int v7, v7, v21

    .line 4998
    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_0

    .line 4984
    .end local v0    # "position":I
    .end local v3    # "wireType":I
    .restart local v8    # "position":I
    .restart local v13    # "wireType":I
    :cond_e
    move v3, v13

    move/from16 v13, p4

    .end local v13    # "wireType":I
    .restart local v3    # "wireType":I
    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_a

    .line 4972
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .local v3, "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_6
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v3, "wireType":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v3, v0, :cond_10

    .line 4973
    const/high16 v0, 0x20000000

    move/from16 v1, v27

    .end local v27    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    and-int/2addr v0, v1

    if-nez v0, :cond_f

    .line 4974
    invoke-static {v12, v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeString([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v8    # "position":I
    .local v0, "position":I
    goto :goto_8

    .line 4976
    .end local v0    # "position":I
    .restart local v8    # "position":I
    :cond_f
    invoke-static {v12, v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4978
    .end local v8    # "position":I
    .restart local v0    # "position":I
    :goto_8
    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, v14, v10, v11, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4979
    or-int v7, v7, v21

    .line 4980
    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_0

    .line 4972
    .end local v0    # "position":I
    .end local v1    # "typeAndOffset":I
    .restart local v8    # "position":I
    .restart local v27    # "typeAndOffset":I
    :cond_10
    move/from16 v1, v27

    .end local v27    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    move/from16 v30, v1

    move-object v13, v2

    move/from16 v27, v6

    move/from16 v18, v9

    move v9, v3

    move-object v6, v5

    goto/16 :goto_a

    .line 4964
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .local v0, "wireType":I
    .local v1, "number":I
    .restart local v2    # "presenceFieldOffset":I
    .local v3, "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_7
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v1, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v2    # "presenceFieldOffset":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v1, "typeAndOffset":I
    .local v3, "wireType":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    if-nez v3, :cond_12

    .line 4965
    invoke-static {v12, v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4966
    .end local v8    # "position":I
    .local v0, "position":I
    move/from16 p3, v0

    move/from16 v27, v1

    .end local v0    # "position":I
    .end local v1    # "typeAndOffset":I
    .restart local v27    # "typeAndOffset":I
    .restart local p3    # "position":I
    iget-wide v0, v2, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v28, 0x0

    cmp-long v0, v0, v28

    if-eqz v0, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    invoke-static {v14, v10, v11, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4967
    or-int v7, v7, v21

    .line 4968
    move/from16 v0, p3

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_0

    .line 4964
    .end local v27    # "typeAndOffset":I
    .end local p3    # "position":I
    .restart local v1    # "typeAndOffset":I
    .restart local v8    # "position":I
    :cond_12
    move/from16 v27, v1

    .end local v1    # "typeAndOffset":I
    .restart local v27    # "typeAndOffset":I
    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_a

    .line 4956
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .local v1, "number":I
    .restart local v2    # "presenceFieldOffset":I
    .local v3, "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_8
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v3, "wireType":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    if-ne v3, v4, :cond_13

    .line 4957
    invoke-static {v12, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v5, v14, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4958
    add-int/lit8 v0, v8, 0x4

    .line 4959
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4960
    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_0

    .line 4956
    .end local v0    # "position":I
    .restart local v8    # "position":I
    :cond_13
    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_a

    .line 4947
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "tag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .local v3, "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .restart local v18    # "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_9
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v11    # "fieldOffset":J
    .end local v18    # "typeAndOffset":I
    .end local p3    # "position":I
    .local v3, "wireType":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "tag":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "typeAndOffset":I
    const/4 v0, 0x1

    if-ne v3, v0, :cond_14

    .line 4948
    invoke-static {v12, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v22

    move-object v0, v5

    move/from16 v4, v27

    .end local v27    # "typeAndOffset":I
    .local v4, "typeAndOffset":I
    move-object/from16 v1, p1

    move-object v13, v2

    move/from16 v18, v9

    move v9, v3

    .end local v3    # "wireType":I
    .local v9, "wireType":I
    .local v18, "tag":I
    move-wide v2, v10

    move/from16 v30, v4

    move/from16 v27, v6

    move-object v6, v5

    .end local v4    # "typeAndOffset":I
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v27, "pos":I
    .restart local v30    # "typeAndOffset":I
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4949
    add-int/lit8 v0, v8, 0x8

    .line 4950
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4951
    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_0

    .line 4947
    .end local v0    # "position":I
    .end local v18    # "tag":I
    .end local v30    # "typeAndOffset":I
    .restart local v3    # "wireType":I
    .restart local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v6, "pos":I
    .restart local v8    # "position":I
    .local v9, "tag":I
    .local v27, "typeAndOffset":I
    :cond_14
    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    .end local v3    # "wireType":I
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v9, "wireType":I
    .restart local v18    # "tag":I
    .local v27, "pos":I
    .restart local v30    # "typeAndOffset":I
    goto/16 :goto_a

    .line 4938
    .end local v9    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "pos":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .local v3, "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_a
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "wireType":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "pos":I
    .restart local v30    # "typeAndOffset":I
    if-nez v9, :cond_15

    .line 4939
    invoke-static {v12, v8, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4940
    .end local v8    # "position":I
    .local v0, "position":I
    iget v1, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v6, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4941
    or-int v7, v7, v21

    .line 4942
    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_0

    .line 4929
    .end local v9    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "pos":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_b
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "wireType":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "pos":I
    .restart local v30    # "typeAndOffset":I
    if-nez v9, :cond_15

    .line 4930
    invoke-static {v12, v8, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 4931
    iget-wide v4, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v6

    move-object/from16 v1, p1

    move-wide v2, v10

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4932
    or-int v7, v7, v21

    .line 4933
    move/from16 v11, p5

    move-object v10, v6

    move v0, v8

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_0

    .line 4920
    .end local v9    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "pos":I
    .end local v30    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_c
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "wireType":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "pos":I
    .restart local v30    # "typeAndOffset":I
    if-ne v9, v4, :cond_15

    .line 4921
    invoke-static {v12, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v10, v11, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 4922
    add-int/lit8 v0, v8, 0x4

    .line 4923
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4924
    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_0

    .line 4912
    .end local v9    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "pos":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v3    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_d
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "wireType":I
    .local v10, "fieldOffset":J
    .local v17, "presenceFieldOffset":I
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "pos":I
    .restart local v30    # "typeAndOffset":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_15

    .line 4913
    invoke-static {v12, v8}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v10, v11, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 4914
    add-int/lit8 v0, v8, 0x8

    .line 4915
    .end local v8    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4916
    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5066
    .end local v0    # "position":I
    .end local v17    # "presenceFieldOffset":I
    .end local v19    # "presenceMaskAndOffset":I
    .end local v21    # "presenceMask":I
    .restart local v8    # "position":I
    :cond_15
    :goto_a
    move-object/from16 v32, v6

    move/from16 v17, v7

    move v15, v9

    move/from16 v21, v18

    move/from16 v19, v27

    move/from16 v18, v8

    move/from16 v8, v25

    goto/16 :goto_e

    .end local v9    # "wireType":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldType":I
    .end local v27    # "pos":I
    .end local v30    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v3    # "fieldType":I
    .local v5, "position":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    :cond_16
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move v9, v0

    move v8, v5

    move/from16 v18, v17

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v5    # "position":I
    .end local v11    # "fieldOffset":J
    .end local v17    # "tag":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "position":I
    .restart local v9    # "wireType":I
    .local v10, "fieldOffset":J
    .local v18, "tag":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "fieldType":I
    .restart local v27    # "pos":I
    .restart local v30    # "typeAndOffset":I
    const/16 v0, 0x1b

    move/from16 v5, v26

    .end local v26    # "fieldType":I
    .local v5, "fieldType":I
    if-ne v5, v0, :cond_1a

    .line 5068
    const/4 v0, 0x2

    if-ne v9, v0, :cond_19

    .line 5069
    invoke-virtual {v6, v14, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 5070
    .local v0, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_18

    .line 5071
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 5072
    .local v1, "size":I
    nop

    .line 5074
    if-nez v1, :cond_17

    const/16 v2, 0xa

    goto :goto_b

    :cond_17
    mul-int/lit8 v2, v1, 0x2

    .line 5073
    :goto_b
    invoke-interface {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5075
    invoke-virtual {v6, v14, v10, v11, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v17, v0

    goto :goto_c

    .line 5070
    .end local v1    # "size":I
    :cond_18
    move-object/from16 v17, v0

    .line 5077
    .end local v0    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .local v17, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    :goto_c
    nop

    .line 5079
    move/from16 v4, v27

    .end local v27    # "pos":I
    .local v4, "pos":I
    invoke-direct {v15, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 5078
    move/from16 v1, v18

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    .end local v4    # "pos":I
    .local v19, "pos":I
    move/from16 v4, p4

    move-wide/from16 v21, v10

    move v10, v5

    .end local v5    # "fieldType":I
    .local v10, "fieldType":I
    .local v21, "fieldOffset":J
    move-object/from16 v5, v17

    move-object v11, v6

    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .local v11, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5080
    .end local v8    # "position":I
    .local v0, "position":I
    move-object v10, v11

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v8, v25

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 5068
    .end local v0    # "position":I
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v17    # "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<*>;"
    .end local v19    # "pos":I
    .end local v21    # "fieldOffset":J
    .restart local v5    # "fieldType":I
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "position":I
    .local v10, "fieldOffset":J
    .restart local v27    # "pos":I
    :cond_19
    move-wide/from16 v21, v10

    move/from16 v19, v27

    move v10, v5

    move-object v11, v6

    .end local v5    # "fieldType":I
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .end local v27    # "pos":I
    .local v10, "fieldType":I
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v19    # "pos":I
    .restart local v21    # "fieldOffset":J
    move/from16 v17, v7

    move v15, v9

    move-object/from16 v32, v11

    move/from16 v21, v18

    move/from16 v18, v8

    goto/16 :goto_d

    .line 5082
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v19    # "pos":I
    .end local v21    # "fieldOffset":J
    .restart local v5    # "fieldType":I
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "fieldOffset":J
    .restart local v27    # "pos":I
    :cond_1a
    move-wide/from16 v21, v10

    move/from16 v19, v27

    move v10, v5

    move-object v11, v6

    .end local v5    # "fieldType":I
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .end local v27    # "pos":I
    .local v10, "fieldType":I
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v19    # "pos":I
    .restart local v21    # "fieldOffset":J
    const/16 v0, 0x31

    if-gt v10, v0, :cond_1c

    .line 5084
    move v6, v8

    .line 5085
    .local v6, "oldPosition":I
    move/from16 v5, v30

    .end local v30    # "typeAndOffset":I
    .local v5, "typeAndOffset":I
    int-to-long v3, v5

    .line 5086
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v26, v3

    move v3, v8

    const/16 v17, -0x1

    move/from16 v4, p4

    move/from16 v23, v5

    .end local v5    # "typeAndOffset":I
    .local v23, "typeAndOffset":I
    move/from16 v5, v18

    move v15, v6

    .end local v6    # "oldPosition":I
    .local v15, "oldPosition":I
    move/from16 v6, v24

    move/from16 v17, v7

    .end local v7    # "currentPresenceField":I
    .local v17, "currentPresenceField":I
    move v7, v9

    move/from16 p3, v10

    move/from16 v10, v18

    move/from16 v18, v8

    .end local v8    # "position":I
    .local v10, "tag":I
    .local v18, "position":I
    .local p3, "fieldType":I
    move/from16 v8, v19

    move/from16 v31, v9

    move-wide/from16 v28, v21

    move/from16 v21, v10

    .end local v9    # "wireType":I
    .end local v10    # "tag":I
    .local v21, "tag":I
    .local v28, "fieldOffset":J
    .local v31, "wireType":I
    move-wide/from16 v9, v26

    move-object/from16 v32, v11

    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v32, "unsafe":Lsun/misc/Unsafe;
    move/from16 v11, p3

    move-wide/from16 v12, v28

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5099
    .end local v18    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v15, :cond_1b

    .line 5100
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v8, v25

    move-object/from16 v10, v32

    goto/16 :goto_0

    .line 5102
    .end local v15    # "oldPosition":I
    :cond_1b
    move/from16 v18, v0

    move/from16 v8, v25

    move/from16 v15, v31

    goto/16 :goto_e

    .end local v0    # "position":I
    .end local v17    # "currentPresenceField":I
    .end local v23    # "typeAndOffset":I
    .end local v28    # "fieldOffset":J
    .end local v31    # "wireType":I
    .end local v32    # "unsafe":Lsun/misc/Unsafe;
    .end local p3    # "fieldType":I
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "position":I
    .restart local v9    # "wireType":I
    .local v10, "fieldType":I
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v18, "tag":I
    .local v21, "fieldOffset":J
    .restart local v30    # "typeAndOffset":I
    :cond_1c
    move/from16 v17, v7

    move/from16 v31, v9

    move/from16 p3, v10

    move-object/from16 v32, v11

    move-wide/from16 v28, v21

    move/from16 v23, v30

    move/from16 v21, v18

    move/from16 v18, v8

    .end local v7    # "currentPresenceField":I
    .end local v8    # "position":I
    .end local v9    # "wireType":I
    .end local v10    # "fieldType":I
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .end local v30    # "typeAndOffset":I
    .restart local v17    # "currentPresenceField":I
    .local v18, "position":I
    .local v21, "tag":I
    .restart local v23    # "typeAndOffset":I
    .restart local v28    # "fieldOffset":J
    .restart local v31    # "wireType":I
    .restart local v32    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "fieldType":I
    const/16 v0, 0x32

    move/from16 v14, p3

    .end local p3    # "fieldType":I
    .local v14, "fieldType":I
    if-ne v14, v0, :cond_1f

    .line 5103
    move/from16 v15, v31

    const/4 v0, 0x2

    .end local v31    # "wireType":I
    .local v15, "wireType":I
    if-ne v15, v0, :cond_1e

    .line 5104
    move/from16 v9, v18

    .line 5105
    .local v9, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v28

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5106
    .end local v18    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v9, :cond_1d

    .line 5107
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v8, v25

    move-object/from16 v10, v32

    goto/16 :goto_0

    .line 5109
    .end local v9    # "oldPosition":I
    :cond_1d
    move/from16 v18, v0

    move/from16 v8, v25

    goto :goto_e

    .line 5131
    .end local v0    # "position":I
    .end local v14    # "fieldType":I
    .end local v15    # "wireType":I
    .end local v17    # "currentPresenceField":I
    .end local v21    # "tag":I
    .end local v23    # "typeAndOffset":I
    .end local v28    # "fieldOffset":J
    .end local v32    # "unsafe":Lsun/misc/Unsafe;
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "position":I
    .local v9, "wireType":I
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v18, "tag":I
    :cond_1e
    :goto_d
    move/from16 v8, v25

    .end local v7    # "currentPresenceField":I
    .end local v8    # "position":I
    .end local v9    # "wireType":I
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .restart local v15    # "wireType":I
    .restart local v17    # "currentPresenceField":I
    .local v18, "position":I
    .restart local v21    # "tag":I
    .restart local v32    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_e

    .line 5111
    .end local v15    # "wireType":I
    .restart local v14    # "fieldType":I
    .restart local v23    # "typeAndOffset":I
    .restart local v28    # "fieldOffset":J
    .restart local v31    # "wireType":I
    :cond_1f
    move/from16 v15, v31

    .end local v31    # "wireType":I
    .restart local v15    # "wireType":I
    move/from16 v13, v18

    .line 5112
    .local v13, "oldPosition":I
    nop

    .line 5113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, p4

    move/from16 v5, v21

    move/from16 v6, v24

    move v7, v15

    move/from16 v8, v23

    move v9, v14

    move-wide/from16 v10, v28

    move/from16 v12, v19

    move/from16 p3, v14

    move v14, v13

    .end local v13    # "oldPosition":I
    .local v14, "oldPosition":I
    .restart local p3    # "fieldType":I
    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5126
    .end local v18    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v14, :cond_20

    .line 5127
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v8, v25

    move-object/from16 v10, v32

    goto/16 :goto_0

    .line 5126
    :cond_20
    move/from16 v18, v0

    move/from16 v8, v25

    .line 5131
    .end local v0    # "position":I
    .end local v14    # "oldPosition":I
    .end local v23    # "typeAndOffset":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v28    # "fieldOffset":J
    .end local p3    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .restart local v18    # "position":I
    :goto_e
    move/from16 v9, p5

    move/from16 v10, v21

    .end local v21    # "tag":I
    .local v10, "tag":I
    if-ne v10, v9, :cond_21

    if-eqz v9, :cond_21

    .line 5132
    move-object/from16 v11, p0

    move-object/from16 v12, p6

    move v2, v10

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v0, v18

    move/from16 v4, v19

    goto/16 :goto_10

    .line 5135
    :cond_21
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_22

    move-object/from16 v12, p6

    iget-object v0, v12, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 5136
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 5137
    iget-object v5, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iget-object v6, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v18    # "position":I
    .restart local v0    # "position":I
    goto :goto_f

    .line 5135
    .end local v0    # "position":I
    .restart local v18    # "position":I
    :cond_22
    move-object/from16 v12, p6

    .line 5142
    :cond_23
    nop

    .line 5143
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5142
    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5145
    .end local v15    # "wireType":I
    .end local v18    # "position":I
    .end local v24    # "number":I
    .restart local v0    # "position":I
    :goto_f
    move-object/from16 v14, p1

    move/from16 v13, p4

    move v2, v10

    move-object v15, v11

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move-object/from16 v10, v32

    move v11, v9

    move-object v9, v12

    move-object/from16 v12, p2

    goto/16 :goto_0

    .line 4875
    .end local v16    # "oldNumber":I
    .end local v17    # "currentPresenceField":I
    .end local v19    # "pos":I
    .end local v32    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "tag":I
    .local v3, "oldNumber":I
    .restart local v4    # "pos":I
    .restart local v7    # "currentPresenceField":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    :cond_24
    move/from16 v17, v7

    move/from16 v25, v8

    move-object v12, v9

    move-object/from16 v32, v10

    move v9, v11

    move-object v11, v15

    .line 5146
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v32    # "unsafe":Lsun/misc/Unsafe;
    :goto_10
    const/4 v1, -0x1

    if-eq v8, v1, :cond_25

    .line 5147
    int-to-long v5, v8

    move-object/from16 v1, p1

    move-object/from16 v10, v32

    .end local v32    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v10, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_11

    .line 5146
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v32    # "unsafe":Lsun/misc/Unsafe;
    :cond_25
    move-object/from16 v1, p1

    move-object/from16 v10, v32

    .line 5149
    .end local v32    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :goto_11
    const/4 v5, 0x0

    .line 5150
    .local v5, "unknownFields":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    iget v6, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->checkInitializedCount:I

    .local v6, "i":I
    :goto_12
    iget v13, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v6, v13, :cond_26

    .line 5151
    iget-object v13, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->intArray:[I

    aget v13, v13, v6

    iget-object v14, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    .line 5152
    invoke-direct {v11, v1, v13, v5, v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    move-object v5, v13

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 5150
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 5158
    .end local v6    # "i":I
    :cond_26
    if-eqz v5, :cond_27

    .line 5159
    iget-object v6, v11, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    .line 5160
    invoke-virtual {v6, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5162
    :cond_27
    if-nez v9, :cond_29

    .line 5163
    move/from16 v6, p4

    if-ne v0, v6, :cond_28

    goto :goto_13

    .line 5164
    :cond_28
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    .line 5167
    :cond_29
    move/from16 v6, p4

    if-gt v0, v6, :cond_2a

    if-ne v2, v9, :cond_2a

    .line 5171
    :goto_13
    return v0

    .line 5168
    :cond_2a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 2
    .param p2, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2529
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;, "Lcom/google/crypto/tink/shaded/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->fieldOrder()Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 2530
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto :goto_0

    .line 2532
    :cond_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_1

    .line 2533
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto :goto_0

    .line 2535
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2538
    :goto_0
    return-void
.end method
