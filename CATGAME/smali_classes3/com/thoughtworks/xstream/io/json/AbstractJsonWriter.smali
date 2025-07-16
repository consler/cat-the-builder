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

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.Byte"

    .line 190
    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Short"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Short:Ljava/lang/Class;

    :cond_1
    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.Integer"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_2
    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "java.lang.Long"

    .line 191
    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    :cond_3
    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string v2, "java.lang.Float"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Float:Ljava/lang/Class;

    :cond_4
    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0xa

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "java.lang.Double"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Double:Ljava/lang/Class;

    :cond_5
    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "java.math.BigInteger"

    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_6
    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "java.math.BigDecimal"

    .line 192
    invoke-static {v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$math$BigDecimal:Ljava/lang/Class;

    :cond_7
    const/16 v3, 0xd

    aput-object v2, v1, v3

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

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 213
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 3

    .line 234
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 194
    new-instance p2, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-lez v0, :cond_0

    move p1, v1

    .line 235
    :cond_0
    iput p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    .line 236
    new-instance p1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {p2, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iput v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 190
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    .line 282
    iget v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 285
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 286
    iput p1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    return-void

    .line 283
    :cond_0
    new-instance p3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    iget v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {p3, v0, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw p3
.end method

.method private handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 291
    iget-object v5, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v5}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v5

    .line 292
    iget-object v6, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v6}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v6, v6, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 293
    invoke-virtual {v0, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    if-le v5, v8, :cond_1

    .line 294
    iget-object v10, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    add-int/lit8 v11, v5, -0x2

    invoke-virtual {v10, v11}, Lcom/thoughtworks/xstream/core/util/FastStack;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v10, v10, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v8

    :cond_1
    const/16 v10, 0x40

    const/4 v11, 0x4

    if-eq v1, v8, :cond_57

    const/16 v13, 0x80

    const/4 v14, 0x2

    if-eq v1, v14, :cond_51

    const/16 v15, 0x8

    const/16 v14, 0x20

    const/16 v12, 0x10

    const/16 v8, 0x200

    if-eq v1, v11, :cond_44

    const-string v16, "@"

    const-string v11, ""

    if-eq v1, v15, :cond_2e

    if-eq v1, v12, :cond_2f

    const/16 v12, 0x100

    if-eq v1, v14, :cond_2a

    if-eq v1, v10, :cond_12

    if-eq v1, v13, :cond_a

    if-eq v1, v12, :cond_7

    if-ne v1, v8, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    if-eq v2, v13, :cond_4

    if-ne v2, v12, :cond_3

    .line 557
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    if-eqz v9, :cond_2

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    :cond_2
    return v2

    .line 571
    :cond_3
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_4
    const/4 v3, 0x0

    .line 562
    invoke-direct {v0, v1, v12, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 563
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 566
    invoke-direct {v0, v1, v12, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 567
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    .line 568
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    .line 575
    :cond_6
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_7
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 460
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    :cond_8
    return v2

    .line 467
    :cond_9
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_a
    const/4 v10, 0x1

    if-eq v2, v10, :cond_11

    const/4 v10, 0x2

    if-eq v2, v10, :cond_d

    const/4 v10, 0x4

    if-eq v2, v10, :cond_e

    if-eq v2, v13, :cond_d

    if-ne v2, v12, :cond_c

    .line 389
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v1, v10

    if-nez v1, :cond_b

    if-eqz v9, :cond_b

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    :cond_b
    return v2

    .line 394
    :cond_c
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_d
    const/4 v3, 0x0

    goto :goto_1

    .line 367
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    if-nez v7, :cond_12

    .line 368
    iget v10, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v14, 0x4

    and-int/2addr v10, v14

    if-nez v10, :cond_12

    .line 369
    invoke-virtual {v0, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 370
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v1, v14

    if-nez v1, :cond_f

    if-eqz v9, :cond_f

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    :cond_f
    return v2

    .line 382
    :goto_1
    invoke-direct {v0, v1, v12, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 383
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    .line 384
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-nez v1, :cond_10

    if-nez v9, :cond_10

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    :cond_10
    return v2

    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 377
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    .line 378
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_12
    const/4 v10, 0x4

    if-eq v2, v10, :cond_22

    if-eq v2, v13, :cond_1f

    if-eq v2, v12, :cond_1f

    if-ne v2, v8, :cond_1e

    .line 418
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    const/4 v3, 0x2

    if-eq v5, v3, :cond_13

    goto :goto_2

    .line 419
    :cond_13
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Single value cannot be root element"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_2
    if-nez v4, :cond_17

    .line 422
    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v1, :cond_15

    const-string v1, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_15
    if-ne v6, v1, :cond_16

    const-string v1, "null"

    .line 423
    sget-object v3, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v0, v1, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto :goto_4

    .line 424
    :cond_16
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-nez v1, :cond_1d

    if-nez v9, :cond_1d

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto :goto_4

    :cond_17
    and-int/2addr v1, v15

    if-eqz v1, :cond_1c

    .line 429
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v1, :cond_19

    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v1, :cond_18

    const-string v1, "java.lang.Long"

    .line 430
    invoke-static {v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Long:Ljava/lang/Class;

    :cond_18
    if-ne v6, v1, :cond_1c

    .line 431
    :cond_19
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/high16 v9, 0x20000000000000L

    cmp-long v1, v7, v9

    if-gtz v1, :cond_1b

    const-wide/high16 v9, -0x20000000000000L

    cmp-long v1, v7, v9

    if-gez v1, :cond_1a

    goto :goto_3

    .line 436
    :cond_1a
    invoke-virtual {v0, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto :goto_4

    .line 434
    :cond_1b
    :goto_3
    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v0, v4, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto :goto_4

    .line 439
    :cond_1c
    invoke-virtual {v0, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    :cond_1d
    :goto_4
    return v2

    .line 454
    :cond_1e
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    .line 445
    :cond_1f
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-nez v1, :cond_21

    if-eqz v9, :cond_20

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto :goto_5

    .line 449
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    :cond_21
    :goto_5
    return v2

    .line 400
    :cond_22
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_24

    const/4 v6, 0x2

    if-le v5, v6, :cond_23

    goto :goto_6

    :cond_23
    const/4 v3, 0x4

    goto :goto_7

    :cond_24
    :goto_6
    if-eqz v7, :cond_25

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_27

    .line 402
    :cond_25
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 405
    :cond_26
    invoke-virtual {v0, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 407
    :cond_27
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_28

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 411
    :cond_28
    :goto_7
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v1, v3

    if-nez v1, :cond_29

    if-eqz v9, :cond_29

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    :cond_29
    return v2

    :cond_2a
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2c

    if-ne v2, v10, :cond_2b

    .line 541
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-nez v1, :cond_2d

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    goto :goto_8

    .line 550
    :cond_2b
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_2c
    const/4 v1, 0x0

    .line 546
    invoke-direct {v0, v10, v12, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 547
    invoke-direct {v0, v3, v4, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_8
    return v2

    :cond_2e
    if-eq v2, v12, :cond_41

    :cond_2f
    const/4 v5, 0x1

    if-eq v2, v5, :cond_40

    const/4 v5, 0x4

    if-eq v2, v5, :cond_30

    if-eq v2, v12, :cond_36

    if-eq v2, v14, :cond_33

    if-eq v2, v13, :cond_32

    if-ne v2, v8, :cond_31

    :cond_30
    const/4 v5, 0x0

    goto :goto_a

    .line 535
    :cond_31
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_32
    const/4 v3, 0x0

    .line 526
    invoke-direct {v0, v1, v14, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 527
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    .line 485
    :cond_33
    iget v3, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_35

    if-ne v1, v12, :cond_34

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 489
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    :cond_35
    return v2

    :cond_36
    if-eqz v9, :cond_37

    .line 495
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_39

    goto :goto_9

    :cond_37
    const/4 v5, 0x4

    .line 496
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 497
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v6, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v5, v6

    if-nez v5, :cond_38

    move-object/from16 v11, v16

    :cond_38
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 499
    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v0, v4, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    :cond_39
    return v2

    .line 504
    :goto_a
    invoke-direct {v0, v1, v14, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 505
    invoke-direct {v0, v1, v10, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3e

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3c

    if-eq v2, v8, :cond_3a

    goto :goto_c

    .line 508
    :cond_3a
    iget v3, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v3, v5

    if-nez v3, :cond_3b

    const-string v3, "$"

    .line 509
    invoke-virtual {v0, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    :cond_3b
    const/4 v3, 0x0

    .line 511
    invoke-direct {v0, v1, v8, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    .line 512
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v1, v5

    if-nez v1, :cond_3f

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto :goto_c

    .line 517
    :cond_3c
    iget v4, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v4, v5

    if-nez v4, :cond_3d

    move-object v12, v11

    goto :goto_b

    :cond_3d
    const/4 v12, 0x0

    :goto_b
    invoke-direct {v0, v1, v5, v3, v12}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_3e
    const/4 v3, 0x0

    .line 520
    invoke-direct {v0, v1, v8, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 521
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_c
    return v2

    :cond_40
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 530
    invoke-direct {v0, v1, v14, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 531
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    .line 532
    invoke-direct {v0, v1, v4, v3, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_41
    if-eqz v3, :cond_43

    .line 474
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-nez v5, :cond_42

    move-object/from16 v11, v16

    :cond_42
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 476
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 477
    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {v0, v4, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    :cond_43
    return v2

    :cond_44
    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v2, v5, :cond_4b

    if-eq v2, v6, :cond_4b

    if-eq v2, v15, :cond_49

    if-eq v2, v12, :cond_46

    if-eq v2, v13, :cond_4b

    if-ne v2, v8, :cond_45

    goto :goto_e

    .line 361
    :cond_45
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    .line 353
    :cond_46
    iget v5, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v5, v6

    if-nez v5, :cond_48

    if-nez v9, :cond_47

    goto :goto_d

    :cond_47
    return v6

    :cond_48
    :goto_d
    const/4 v5, 0x0

    .line 354
    invoke-direct {v0, v1, v15, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 355
    invoke-direct {v0, v1, v12, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    .line 348
    :cond_49
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_4a

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    :cond_4a
    return v2

    :cond_4b
    :goto_e
    if-eqz v7, :cond_4d

    .line 327
    iget v5, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4c

    goto :goto_f

    :cond_4c
    const/4 v5, 0x0

    goto :goto_10

    :cond_4d
    :goto_f
    const/4 v5, 0x0

    .line 328
    invoke-direct {v0, v1, v15, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 329
    invoke-direct {v0, v1, v14, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    :goto_10
    const/4 v1, 0x1

    if-eq v2, v1, :cond_50

    if-eq v2, v6, :cond_4f

    if-eq v2, v13, :cond_50

    if-eq v2, v8, :cond_4e

    goto :goto_11

    .line 335
    :cond_4e
    invoke-direct {v0, v10, v8, v5, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 338
    :cond_4f
    invoke-direct {v0, v10, v6, v3, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 342
    :cond_50
    invoke-direct {v0, v10, v8, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 343
    invoke-direct {v0, v1, v2, v5, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    :goto_11
    return v2

    :cond_51
    move v6, v11

    move v4, v8

    if-eq v2, v4, :cond_54

    if-eq v2, v6, :cond_53

    if-ne v2, v13, :cond_52

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    return v2

    .line 318
    :cond_52
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4

    :cond_53
    const/4 v4, 0x0

    .line 306
    invoke-direct {v0, v1, v13, v4, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 307
    invoke-direct {v0, v1, v6, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    .line 313
    :cond_54
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_55

    const/4 v3, 0x2

    if-le v5, v3, :cond_56

    :cond_55
    and-int/2addr v1, v6

    if-nez v1, :cond_56

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    :cond_56
    return v2

    :cond_57
    move v6, v11

    if-ne v2, v6, :cond_58

    const/4 v4, 0x0

    .line 298
    invoke-direct {v0, v10, v6, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    return v2

    .line 301
    :cond_58
    new-instance v4, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    .line 254
    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x295

    .line 255
    iput p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

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

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    .line 270
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

    const/4 v2, 0x4

    .line 273
    iput v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    if-le v0, v1, :cond_1

    or-int/lit16 v0, v2, 0x81

    .line 275
    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    :cond_1
    return-void
.end method

.method protected abstract endObject()V
.end method

.method protected getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    .locals 1

    .line 586
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Boolean"

    .line 588
    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_2
    if-eq p1, v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    .line 590
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NUMBER:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_1

    .line 588
    :cond_5
    :goto_0
    sget-object p1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->BOOLEAN:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    :goto_1
    return-object p1
.end method

.method protected isArray(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_5

    .line 603
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Collection"

    .line 604
    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Collection:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$io$Externalizable:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.io.Externalizable"

    .line 605
    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$io$Externalizable:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.util.Map"

    .line 606
    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.Map$Entry"

    .line 607
    invoke-static {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->class$java$util$Map$Entry:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract nextElement()V
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    .line 260
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
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u0000"

    :cond_2
    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x81

    .line 264
    iput p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void
.end method

.method protected abstract startArray()V
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget v2, v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v1, p2, v2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p2, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x295

    .line 246
    iput p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract startObject()V
.end method
