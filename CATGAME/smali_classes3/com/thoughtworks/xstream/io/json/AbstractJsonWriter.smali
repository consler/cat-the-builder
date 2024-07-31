.class public abstract Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.super Lcom/thoughtworks/xstream/io/AbstractWriter;
.source "AbstractJsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;,
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;,
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    }
.end annotation


# static fields
.field public static final DROP_ROOT_MODE:I = 0x1

.field public static final EXPLICIT_MODE:I = 0x4

.field public static final IEEE_754_MODE:I = 0x8

.field private static final NUMBER_TYPES:Ljava/util/Set;

.field private static final STATE_END_ATTRIBUTES:I = 0x20

.field private static final STATE_END_ELEMENTS:I = 0x100

.field private static final STATE_END_OBJECT:I = 0x2

.field private static final STATE_NEXT_ATTRIBUTE:I = 0x10

.field private static final STATE_NEXT_ELEMENT:I = 0x80

.field private static final STATE_ROOT:I = 0x1

.field private static final STATE_SET_VALUE:I = 0x200

.field private static final STATE_START_ATTRIBUTES:I = 0x8

.field private static final STATE_START_ELEMENTS:I = 0x40

.field private static final STATE_START_OBJECT:I = 0x4

.field public static final STRICT_MODE:I = 0x2

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

.field static synthetic class$java$io$Externalizable:Ljava/lang/Class;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Byte:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Short:Ljava/lang/Class;

.field static synthetic class$java$math$BigDecimal:Ljava/lang/Class;

.field static synthetic class$java$math$BigInteger:Ljava/lang/Class;

.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;

.field static synthetic class$java$util$Map$Entry:Ljava/lang/Class;


# instance fields
.field private expectedStates:I

.field private mode:I

.field private stack:Lcom/thoughtworks/xstream/core/util/FastStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 189
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 190
    const-string v2, "java.lang.Byte"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Byte:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "java.lang.Short"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Short:Ljava/lang/Class;

    :cond_1
    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "java.lang.Integer"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_2
    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 191
    const-string v3, "java.lang.Long"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "java.lang.Float"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Float:Ljava/lang/Class;

    :cond_4
    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v3, :cond_5

    const-string v3, "java.lang.Double"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Double:Ljava/lang/Class;

    :cond_5
    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v3, :cond_6

    const-string v3, "java.math.BigInteger"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_6
    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v3, :cond_7

    .line 192
    const-string v3, "java.math.BigDecimal"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigDecimal:Ljava/lang/Class;

    goto :goto_2

    :cond_7
    nop

    :goto_2
    aput-object v3, v1, v2

    .line 189
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 203
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 204
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 213
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 214
    return-void
.end method

.method public constructor <init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 234
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 194
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 235
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    .line 236
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iput v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 238
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 224
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 190
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requiredState"    # I
    .param p2, "elementToAdd"    # Ljava/lang/String;
    .param p3, "valueToAdd"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    .line 282
    .local v0, "stackElement":Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;
    iget v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 285
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, "currentState":I
    iput v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    .line 287
    return-void

    .line 283
    .end local v1    # "currentState":I
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    iget v2, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v1, v2, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method private handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p1, "currentState"    # I
    .param p2, "requiredState"    # I
    .param p3, "elementToAdd"    # Ljava/lang/String;
    .param p4, "valueToAdd"    # Ljava/lang/String;

    .line 291
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v5}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v5

    .line 292
    .local v5, "size":I
    iget-object v6, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v6}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v6, v6, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    .line 293
    .local v6, "currentType":Ljava/lang/Class;
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    invoke-virtual {v1, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    .line 294
    .local v9, "isArray":Z
    :goto_0
    if-le v5, v8, :cond_1

    iget-object v10, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    add-int/lit8 v11, v5, -0x2

    invoke-virtual {v10, v11}, Lcom/thoughtworks/xstream/core/util/FastStack;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v10, v10, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    invoke-virtual {v1, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v8

    .line 295
    .local v7, "isArrayElement":Z
    :cond_1
    const/16 v10, 0x40

    const/4 v11, 0x4

    if-eq v0, v8, :cond_57

    const/16 v13, 0x80

    const/4 v14, 0x2

    if-eq v0, v14, :cond_51

    const/16 v15, 0x8

    const/16 v14, 0x20

    const/16 v12, 0x10

    const/16 v8, 0x200

    if-eq v0, v11, :cond_44

    const-string v16, "@"

    const-string v11, ""

    if-eq v0, v15, :cond_2e

    if-eq v0, v12, :cond_2f

    const/16 v12, 0x100

    if-eq v0, v14, :cond_2a

    if-eq v0, v10, :cond_12

    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_7

    if-ne v0, v8, :cond_6

    .line 555
    const/4 v8, 0x1

    if-eq v2, v8, :cond_5

    if-eq v2, v13, :cond_4

    if-ne v2, v12, :cond_3

    .line 557
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_2

    if-eqz v9, :cond_2

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 560
    :cond_2
    return v2

    .line 571
    :cond_3
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 562
    :cond_4
    const/4 v8, 0x0

    invoke-direct {v1, v0, v12, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 563
    .end local p1    # "currentState":I
    .local v0, "currentState":I
    const/4 v10, 0x2

    invoke-direct {v1, v0, v10, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 564
    return v2

    .line 566
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_5
    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-direct {v1, v0, v12, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 567
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    invoke-direct {v1, v0, v10, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 568
    const/4 v10, 0x1

    invoke-direct {v1, v0, v10, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 569
    return v2

    .line 575
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_6
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 458
    :cond_7
    const/4 v10, 0x2

    if-ne v2, v10, :cond_9

    .line 460
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_8

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 465
    :cond_8
    return v2

    .line 467
    :cond_9
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 365
    :cond_a
    const/4 v10, 0x1

    if-eq v2, v10, :cond_11

    const/4 v10, 0x2

    if-eq v2, v10, :cond_f

    const/4 v10, 0x4

    if-eq v2, v10, :cond_d

    if-eq v2, v13, :cond_f

    if-ne v2, v12, :cond_c

    .line 389
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v8, v10

    if-nez v8, :cond_b

    if-eqz v9, :cond_b

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 392
    :cond_b
    return v2

    .line 394
    :cond_c
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 367
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 368
    if-nez v7, :cond_12

    iget v10, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v14, 0x4

    and-int/2addr v10, v14

    if-nez v10, :cond_12

    .line 369
    invoke-virtual {v1, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 370
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v8, v14

    if-nez v8, :cond_e

    if-eqz v9, :cond_e

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 373
    :cond_e
    return v2

    .line 382
    :cond_f
    const/4 v8, 0x0

    invoke-direct {v1, v0, v12, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 383
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    const/4 v10, 0x2

    invoke-direct {v1, v0, v10, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 384
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_10

    if-nez v9, :cond_10

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 387
    :cond_10
    return v2

    .line 377
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_11
    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-direct {v1, v0, v8, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 378
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    const/4 v8, 0x1

    invoke-direct {v1, v0, v8, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 379
    return v2

    .line 398
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_12
    const/4 v10, 0x4

    if-eq v2, v10, :cond_22

    if-eq v2, v13, :cond_1f

    if-eq v2, v12, :cond_1f

    if-ne v2, v8, :cond_1e

    .line 418
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x2

    and-int/2addr v8, v10

    if-eqz v8, :cond_14

    if-eq v5, v10, :cond_13

    goto :goto_1

    .line 419
    :cond_13
    new-instance v8, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v10, "Single value cannot be root element"

    invoke-direct {v8, v10}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 421
    :cond_14
    :goto_1
    if-nez v4, :cond_17

    .line 422
    sget-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v8, :cond_15

    const-string v8, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_15
    if-ne v6, v8, :cond_16

    .line 423
    sget-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    const-string v10, "null"

    invoke-virtual {v1, v10, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto :goto_5

    .line 424
    :cond_16
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_1d

    if-nez v9, :cond_1d

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto :goto_5

    .line 429
    :cond_17
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v8, v15

    if-eqz v8, :cond_1c

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v8, :cond_19

    sget-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v8, :cond_18

    .line 430
    const-string v8, "java.lang.Long"

    invoke-static {v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_2

    :cond_18
    nop

    :goto_2
    if-ne v6, v8, :cond_1c

    .line 431
    :cond_19
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 433
    .local v10, "longValue":J
    const-wide/high16 v12, 0x20000000000000L

    cmp-long v8, v10, v12

    if-gtz v8, :cond_1b

    const-wide/high16 v12, -0x20000000000000L

    cmp-long v8, v10, v12

    if-gez v8, :cond_1a

    goto :goto_3

    .line 436
    :cond_1a
    invoke-virtual {v1, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto :goto_4

    .line 434
    :cond_1b
    :goto_3
    sget-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v1, v4, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    .line 438
    .end local v10    # "longValue":J
    :goto_4
    goto :goto_5

    .line 439
    :cond_1c
    invoke-virtual {v1, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    .line 442
    :cond_1d
    :goto_5
    return v2

    .line 454
    :cond_1e
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 445
    :cond_1f
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_21

    .line 446
    if-eqz v9, :cond_20

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto :goto_6

    .line 449
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 452
    :cond_21
    :goto_6
    return v2

    .line 400
    :cond_22
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x1

    and-int/2addr v8, v10

    if-eqz v8, :cond_24

    const/4 v8, 0x2

    if-le v5, v8, :cond_23

    goto :goto_7

    :cond_23
    const/4 v10, 0x4

    goto :goto_8

    .line 401
    :cond_24
    :goto_7
    if-eqz v7, :cond_25

    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_27

    .line 402
    :cond_25
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 405
    :cond_26
    invoke-virtual {v1, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 407
    :cond_27
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_28

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 411
    :cond_28
    :goto_8
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v8, v10

    if-nez v8, :cond_29

    .line 412
    if-eqz v9, :cond_29

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 416
    :cond_29
    return v2

    .line 539
    :cond_2a
    const/4 v8, 0x2

    if-eq v2, v8, :cond_2c

    if-ne v2, v10, :cond_2b

    .line 541
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_2d

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    goto :goto_9

    .line 550
    :cond_2b
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 546
    :cond_2c
    const/4 v8, 0x0

    invoke-direct {v1, v10, v12, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 547
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    const/4 v10, 0x2

    invoke-direct {v1, v0, v10, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 548
    nop

    .line 552
    :cond_2d
    :goto_9
    return v2

    .line 471
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_2e
    if-eq v2, v12, :cond_41

    .line 483
    :cond_2f
    const/4 v15, 0x1

    if-eq v2, v15, :cond_40

    const/4 v15, 0x4

    if-eq v2, v15, :cond_39

    if-eq v2, v12, :cond_35

    if-eq v2, v14, :cond_32

    if-eq v2, v13, :cond_31

    if-ne v2, v8, :cond_30

    goto :goto_a

    .line 535
    :cond_30
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 526
    :cond_31
    const/4 v8, 0x0

    invoke-direct {v1, v0, v14, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 527
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    const/4 v10, 0x2

    invoke-direct {v1, v0, v10, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 528
    return v2

    .line 485
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_32
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_34

    .line 486
    if-ne v0, v12, :cond_33

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 489
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 493
    :cond_34
    return v2

    .line 495
    :cond_35
    if-eqz v9, :cond_36

    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_38

    .line 496
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 497
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget v10, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v12, 0x4

    and-int/2addr v10, v12

    if-nez v10, :cond_37

    move-object/from16 v11, v16

    :cond_37
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 498
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 499
    sget-object v10, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v1, v4, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    .line 501
    .end local v8    # "name":Ljava/lang/String;
    :cond_38
    return v2

    .line 504
    :cond_39
    :goto_a
    const/4 v12, 0x0

    invoke-direct {v1, v0, v14, v12, v12}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 505
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    invoke-direct {v1, v0, v10, v12, v12}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 506
    const/4 v10, 0x2

    if-eq v2, v10, :cond_3e

    const/4 v10, 0x4

    if-eq v2, v10, :cond_3c

    if-eq v2, v8, :cond_3a

    goto :goto_c

    .line 508
    :cond_3a
    iget v11, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v11, v10

    if-nez v11, :cond_3b

    .line 509
    const-string v10, "$"

    invoke-virtual {v1, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 511
    :cond_3b
    const/4 v10, 0x0

    invoke-direct {v1, v0, v8, v10, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 512
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_3f

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto :goto_c

    .line 517
    :cond_3c
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v8, v10

    if-nez v8, :cond_3d

    move-object v12, v11

    goto :goto_b

    :cond_3d
    const/4 v12, 0x0

    :goto_b
    invoke-direct {v1, v0, v10, v3, v12}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 518
    goto :goto_c

    .line 520
    :cond_3e
    const/4 v10, 0x0

    invoke-direct {v1, v0, v8, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 521
    const/4 v8, 0x2

    invoke-direct {v1, v0, v8, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 524
    :cond_3f
    :goto_c
    return v2

    .line 530
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_40
    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-direct {v1, v0, v14, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 531
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    invoke-direct {v1, v0, v8, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 532
    const/4 v8, 0x1

    invoke-direct {v1, v0, v8, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 533
    return v2

    .line 473
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_41
    if-eqz v3, :cond_43

    .line 474
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget v10, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v12, 0x4

    and-int/2addr v10, v12

    if-nez v10, :cond_42

    move-object/from16 v11, v16

    :cond_42
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 475
    .restart local v8    # "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 476
    invoke-virtual {v1, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 477
    sget-object v10, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v1, v4, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    .line 479
    .end local v8    # "name":Ljava/lang/String;
    :cond_43
    return v2

    .line 322
    :cond_44
    const/4 v10, 0x1

    if-eq v2, v10, :cond_4b

    const/4 v10, 0x4

    if-eq v2, v10, :cond_4b

    if-eq v2, v15, :cond_49

    if-eq v2, v12, :cond_46

    if-eq v2, v13, :cond_4b

    if-ne v2, v8, :cond_45

    goto :goto_e

    .line 361
    :cond_45
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 353
    :cond_46
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-nez v8, :cond_48

    if-nez v9, :cond_47

    goto :goto_d

    .line 358
    :cond_47
    return v10

    .line 354
    :cond_48
    :goto_d
    const/4 v8, 0x0

    invoke-direct {v1, v0, v15, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 355
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    invoke-direct {v1, v0, v12, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 356
    return v2

    .line 348
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_49
    const/4 v10, 0x4

    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_4a

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 351
    :cond_4a
    return v2

    .line 327
    :cond_4b
    :goto_e
    if-eqz v7, :cond_4c

    iget v10, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v11, 0x4

    and-int/2addr v10, v11

    if-eqz v10, :cond_4d

    .line 328
    :cond_4c
    const/4 v10, 0x0

    invoke-direct {v1, v0, v15, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 329
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    invoke-direct {v1, v0, v14, v10, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 331
    :cond_4d
    const/16 v0, 0x40

    .line 333
    const/4 v10, 0x1

    if-eq v2, v10, :cond_4f

    const/4 v10, 0x4

    if-eq v2, v10, :cond_50

    if-eq v2, v13, :cond_4f

    if-eq v2, v8, :cond_4e

    goto :goto_10

    .line 335
    :cond_4e
    const/4 v11, 0x0

    invoke-direct {v1, v0, v8, v11, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 336
    goto :goto_10

    .line 333
    :cond_4f
    const/4 v11, 0x0

    goto :goto_f

    .line 338
    :cond_50
    const/4 v11, 0x0

    invoke-direct {v1, v0, v10, v3, v11}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 339
    goto :goto_10

    .line 342
    :goto_f
    invoke-direct {v1, v0, v8, v11, v11}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 343
    invoke-direct {v1, v0, v2, v11, v11}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 346
    :goto_10
    return v2

    .line 304
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_51
    const/4 v8, 0x1

    if-eq v2, v8, :cond_54

    const/4 v8, 0x4

    if-eq v2, v8, :cond_53

    if-ne v2, v13, :cond_52

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 311
    return v2

    .line 318
    :cond_52
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 306
    :cond_53
    const/4 v8, 0x0

    invoke-direct {v1, v0, v13, v8, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 307
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    const/4 v10, 0x4

    invoke-direct {v1, v0, v10, v3, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 308
    return v2

    .line 313
    .end local v0    # "currentState":I
    .restart local p1    # "currentState":I
    :cond_54
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v10, 0x1

    and-int/2addr v8, v10

    if-eqz v8, :cond_55

    const/4 v8, 0x2

    if-le v5, v8, :cond_56

    :cond_55
    iget v8, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v11, 0x4

    and-int/2addr v8, v11

    if-nez v8, :cond_56

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 316
    :cond_56
    return v2

    .line 297
    :cond_57
    if-ne v2, v11, :cond_58

    .line 298
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {v1, v10, v11, v3, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local p1    # "currentState":I
    .restart local v0    # "currentState":I
    return v2

    .line 301
    .end local v0    # "currentState":I
    .end local p0    # "this":Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
    .restart local p1    # "currentState":I
    :cond_58
    new-instance v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v8, v0, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v8

    .line 298
    .end local v5    # "size":I
    .end local v6    # "currentType":Ljava/lang/Class;
    .end local v7    # "isArrayElement":Z
    .end local v9    # "isArray":Z
    .end local p1    # "currentState":I
    .end local p2    # "requiredState":I
    .end local p3    # "elementToAdd":Ljava/lang/String;
    .end local p4    # "valueToAdd":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 254
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    const/16 v0, 0x295

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 256
    return-void
.end method

.method protected abstract addLabel(Ljava/lang/String;)V
.end method

.method protected abstract addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V
.end method

.method protected abstract endArray()V
.end method

.method public endNode()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    .line 269
    .local v0, "size":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 270
    .local v2, "nextState":I
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iput v2, v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    .line 273
    const/4 v3, 0x4

    iput v3, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 274
    if-le v0, v1, :cond_1

    .line 275
    or-int/lit16 v1, v3, 0x81

    iput v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 277
    :cond_1
    return-void
.end method

.method protected abstract endObject()V
.end method

.method protected getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 586
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 588
    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    nop

    :goto_0
    if-eq p1, v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    .line 590
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NUMBER:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_2

    .line 588
    :cond_5
    :goto_1
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->BOOLEAN:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    .line 586
    :goto_2
    return-object v0
.end method

.method protected isArray(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 603
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 604
    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Collection:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$io$Externalizable:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 605
    const-string v0, "java.io.Externalizable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$io$Externalizable:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 606
    const-string v0, "java.util.Map"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 607
    const-string v0, "java.util.Map$Entry"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map$Entry:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 603
    :goto_4
    return v0
.end method

.method protected abstract nextElement()V
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    .line 260
    .local v0, "type":Ljava/lang/Class;
    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Character"

    invoke-static {v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Character:Ljava/lang/Class;

    :cond_0
    if-eq v0, v1, :cond_1

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    const-string p1, "\u0000"

    .line 263
    :cond_2
    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    const/16 v1, 0x81

    iput v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 265
    return-void
.end method

.method protected abstract startArray()V
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 251
    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .line 241
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget v2, v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v1, p2, v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v0, 0x295

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 247
    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract startObject()V
.end method
