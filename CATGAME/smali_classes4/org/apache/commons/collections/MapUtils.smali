.class public Lorg/apache/commons/collections/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;

.field private static final INDENT_STRING:Ljava/lang/String; = "    "


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/MapUtils;->EMPTY_MAP:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/MapUtils;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static debugPrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "label"    # Ljava/lang/Object;
    .param p2, "map"    # Ljava/util/Map;

    .line 938
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    .line 939
    return-void
.end method

.method public static fixedSizeMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1327
    invoke-static {p0}, Lorg/apache/commons/collections/map/FixedSizeMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static fixedSizeSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;

    .line 1570
    invoke-static {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 163
    if-eqz p0, :cond_3

    .line 164
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 166
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 169
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/Boolean;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 172
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 173
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    .line 174
    .local v1, "n":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    .line 178
    .end local v0    # "answer":Ljava/lang/Object;
    .end local v1    # "n":Ljava/lang/Number;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .line 404
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 405
    .local v0, "answer":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 406
    move-object v0, p2

    .line 408
    :cond_0
    return-object v0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 589
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 590
    .local v0, "booleanObject":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 591
    const/4 v1, 0x0

    return v1

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Z

    .line 718
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 719
    .local v0, "booleanObject":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 720
    return p2

    .line 722
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 225
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 226
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 229
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    return-object v1

    .line 231
    :cond_1
    new-instance v1, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    return-object v1
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Byte;

    .line 444
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 445
    .local v0, "answer":Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 446
    move-object v0, p2

    .line 448
    :cond_0
    return-object v0
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;)B
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 606
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 607
    .local v0, "byteObject":Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 608
    const/4 v1, 0x0

    return v1

    .line 610
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;B)B
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # B

    .line 738
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 739
    .local v0, "byteObject":Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 740
    return p2

    .line 742
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 320
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 321
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 322
    const/4 v1, 0x0

    return-object v1

    .line 323
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 324
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    return-object v1

    .line 326
    :cond_1
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .line 544
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 545
    .local v0, "answer":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 546
    move-object v0, p2

    .line 548
    :cond_0
    return-object v0
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;)D
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 691
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 692
    .local v0, "doubleObject":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 693
    const-wide/16 v1, 0x0

    return-wide v1

    .line 695
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;D)D
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # D

    .line 838
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 839
    .local v0, "doubleObject":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 840
    return-wide p2

    .line 842
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 301
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 302
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    return-object v1

    .line 304
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 305
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    return-object v1

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    return-object v1
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .line 524
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 525
    .local v0, "answer":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 526
    move-object v0, p2

    .line 528
    :cond_0
    return-object v0
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;)F
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 674
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 675
    .local v0, "floatObject":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 676
    const/4 v1, 0x0

    return v1

    .line 678
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;F)F
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # F

    .line 818
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 819
    .local v0, "floatObject":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 820
    return p2

    .line 822
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;)I
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 640
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 641
    .local v0, "integerObject":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 642
    const/4 v1, 0x0

    return v1

    .line 644
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;I)I
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # I

    .line 778
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 779
    .local v0, "integerObject":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 780
    return p2

    .line 782
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 263
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 264
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 265
    const/4 v1, 0x0

    return-object v1

    .line 266
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 267
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 269
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .line 484
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 485
    .local v0, "answer":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 486
    move-object v0, p2

    .line 488
    :cond_0
    return-object v0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 282
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 283
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    return-object v1

    .line 285
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 286
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    return-object v1

    .line 288
    :cond_1
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .line 504
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 505
    .local v0, "answer":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 506
    move-object v0, p2

    .line 508
    :cond_0
    return-object v0
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;)J
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 657
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 658
    .local v0, "longObject":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 659
    const-wide/16 v1, 0x0

    return-wide v1

    .line 661
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;J)J
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # J

    .line 798
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 799
    .local v0, "longObject":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 800
    return-wide p2

    .line 802
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 340
    if-eqz p0, :cond_0

    .line 341
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 343
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 346
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/util/Map;

    .line 564
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 565
    .local v0, "answer":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 566
    move-object v0, p2

    .line 568
    :cond_0
    return-object v0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 195
    if-eqz p0, :cond_1

    .line 196
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 198
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    return-object v1

    .line 201
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 203
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "text":Ljava/lang/String;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 206
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Number;

    .line 424
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 425
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 426
    move-object v0, p2

    .line 428
    :cond_0
    return-object v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 362
    if-eqz p0, :cond_0

    .line 363
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 365
    return-object v0

    .line 368
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_0
    return-object p2
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 244
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 245
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 246
    const/4 v1, 0x0

    return-object v1

    .line 247
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 248
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    return-object v1

    .line 250
    :cond_1
    new-instance v1, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(S)V

    return-object v1
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .line 464
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 465
    .local v0, "answer":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 466
    move-object v0, p2

    .line 468
    :cond_0
    return-object v0
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;)S
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 623
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 624
    .local v0, "shortObject":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 625
    const/4 v1, 0x0

    return v1

    .line 627
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;S)S
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # S

    .line 758
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 759
    .local v0, "shortObject":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 760
    return p2

    .line 762
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;

    .line 139
    if-eqz p0, :cond_0

    .line 140
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 145
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 384
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "answer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 386
    move-object v0, p2

    .line 388
    :cond_0
    return-object v0
.end method

.method public static invertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p0, "map"    # Ljava/util/Map;

    .line 1074
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1075
    .local v0, "out":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1077
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 1079
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1199
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1212
    invoke-static {p0}, Lorg/apache/commons/collections/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 1359
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazyMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "transformerFactory"    # Lorg/apache/commons/collections/Transformer;

    .line 1398
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazyMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 1603
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "transformerFactory"    # Lorg/apache/commons/collections/Transformer;

    .line 1642
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected static logInfo(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Exception;

    .line 951
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INFO: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method public static multiValueMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1426
    invoke-static {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->decorate(Ljava/util/Map;)Lorg/apache/commons/collections/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "collectionClass"    # Ljava/lang/Class;

    .line 1441
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->decorate(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "collectionFactory"    # Lorg/apache/commons/collections/Factory;

    .line 1456
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1413
    invoke-static {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->decorate(Ljava/util/Map;)Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyPred"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "valuePred"    # Lorg/apache/commons/collections/Predicate;

    .line 1273
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "keyPred"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "valuePred"    # Lorg/apache/commons/collections/Predicate;

    .line 1517
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static printIndent(Ljava/io/PrintStream;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "indent"    # I

    .line 1053
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1054
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static putAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "array"    # [Ljava/lang/Object;

    .line 1157
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 1158
    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1161
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1162
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_2

    .line 1163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1164
    aget-object v2, p1, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 1165
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    .end local v2    # "entry":Ljava/util/Map$Entry;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_4

    .line 1167
    :cond_2
    instance-of v2, v1, Lorg/apache/commons/collections/KeyValue;

    if-eqz v2, :cond_4

    .line 1168
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 1169
    aget-object v2, p1, v0

    check-cast v2, Lorg/apache/commons/collections/KeyValue;

    .line 1170
    .local v2, "keyval":Lorg/apache/commons/collections/KeyValue;
    invoke-interface {v2}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    .end local v2    # "keyval":Lorg/apache/commons/collections/KeyValue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    goto :goto_4

    .line 1172
    :cond_4
    instance-of v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 1173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_6

    .line 1174
    aget-object v4, p1, v2

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 1175
    .local v4, "sub":[Ljava/lang/Object;
    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_5

    .line 1178
    aget-object v5, v4, v0

    aget-object v6, v4, v3

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .end local v4    # "sub":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1176
    .restart local v4    # "sub":[Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid array element: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    .end local v2    # "i":I
    .end local v4    # "sub":[Ljava/lang/Object;
    :cond_6
    goto :goto_4

    .line 1181
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_8

    .line 1182
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-object v0, p1, v0

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-object v2, p1, v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    goto :goto_3

    .line 1185
    .end local v4    # "i":I
    :cond_8
    :goto_4
    return-object p0

    .line 1159
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_9
    :goto_5
    return-object p0
.end method

.method public static safeAddToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1101
    if-nez p2, :cond_0

    .line 1102
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1104
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    :goto_0
    return-void
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1241
    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;

    .line 1485
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/ResourceBundle;)Ljava/util/Map;
    .locals 4
    .param p0, "resourceBundle"    # Ljava/util/ResourceBundle;

    .line 875
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 876
    .local v0, "enumeration":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 878
    .local v1, "map":Ljava/util/Map;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 880
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 881
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 884
    :cond_0
    return-object v1
.end method

.method public static toProperties(Ljava/util/Map;)Ljava/util/Properties;
    .locals 5
    .param p0, "map"    # Ljava/util/Map;

    .line 855
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 856
    .local v0, "answer":Ljava/util/Properties;
    if-eqz p0, :cond_0

    .line 857
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 859
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 860
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 861
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 864
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyTransformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "valueTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 1313
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "keyTransformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "valueTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 1556
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedSortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static typedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyType"    # Ljava/lang/Class;
    .param p2, "valueType"    # Ljava/lang/Class;

    .line 1288
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TypedMap;->decorate(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static typedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;
    .param p1, "keyType"    # Ljava/lang/Class;
    .param p2, "valueType"    # Ljava/lang/Class;

    .line 1531
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TypedSortedMap;->decorate(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 1254
    invoke-static {p0}, Lorg/apache/commons/collections/map/UnmodifiableMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;

    .line 1498
    invoke-static {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static verbosePrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "label"    # Ljava/lang/Object;
    .param p2, "map"    # Ljava/util/Map;

    .line 912
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    .line 913
    return-void
.end method

.method private static verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V
    .locals 9
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "label"    # Ljava/lang/Object;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "lineage"    # Lorg/apache/commons/collections/ArrayStack;
    .param p4, "debug"    # Z

    .line 984
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 986
    const-string v0, "null"

    const-string v1, " = "

    if-nez p2, :cond_1

    .line 987
    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 991
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    return-void

    .line 994
    :cond_1
    if-eqz p1, :cond_2

    .line 995
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    :cond_2
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v2

    invoke-static {p0, v2}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1000
    const-string v2, "{"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p3, p2}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1005
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1006
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 1007
    .local v4, "childKey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1008
    .local v5, "childValue":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_4

    invoke-virtual {p3, v5}, Lorg/apache/commons/collections/ArrayStack;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1009
    if-nez v4, :cond_3

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    move-object v7, v5

    check-cast v7, Ljava/util/Map;

    invoke-static {p0, v6, v7, p3, p4}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    goto :goto_3

    .line 1016
    :cond_4
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v6

    invoke-static {p0, v6}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1017
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 1018
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p3, v5}, Lorg/apache/commons/collections/ArrayStack;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1021
    .local v6, "lineageIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 1022
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_2

    .line 1023
    :cond_5
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v6, :cond_6

    .line 1024
    const-string v7, "(this Map)"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1026
    :cond_6
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "(ancestor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, "] Map)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1032
    :goto_2
    if-eqz p4, :cond_7

    if-eqz v5, :cond_7

    .line 1033
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(C)V

    .line 1034
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1036
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 1039
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "childKey":Ljava/lang/Object;
    .end local v5    # "childValue":Ljava/lang/Object;
    .end local v6    # "lineageIndex":I
    :goto_3
    goto/16 :goto_0

    .line 1041
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    .line 1043
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1044
    if-eqz p4, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, "}"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1045
    return-void
.end method
