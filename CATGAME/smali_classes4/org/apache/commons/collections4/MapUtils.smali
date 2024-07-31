.class public Lorg/apache/commons/collections4/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field public static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;

.field private static final INDENT_STRING:Ljava/lang/String; = "    "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 89
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/MapUtils;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    .line 88
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugPrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "label"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 946
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections4/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V

    .line 947
    return-void
.end method

.method public static emptyIfNull(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1202
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static fixedSizeMap(Ljava/util/Map;)Lorg/apache/commons/collections4/IterableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1340
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/map/FixedSizeMap;->fixedSizeMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/FixedSizeMap;

    move-result-object v0

    return-object v0
.end method

.method public static fixedSizeSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1605
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/map/FixedSizeSortedMap;->fixedSizeSortedMap(Ljava/util/SortedMap;)Lorg/apache/commons/collections4/map/FixedSizeSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 155
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_3

    .line 156
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 158
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 161
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 162
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 164
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 165
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    .line 166
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

    .line 170
    .end local v0    # "answer":Ljava/lang/Object;
    .end local v1    # "n":Ljava/lang/Number;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 411
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 412
    .local v0, "answer":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 413
    move-object v0, p2

    .line 415
    :cond_0
    return-object v0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)Z"
        }
    .end annotation

    .line 596
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;Z)Z"
        }
    .end annotation

    .line 727
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 728
    .local v0, "booleanObject":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 729
    return p2

    .line 731
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 218
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 219
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    return-object v1

    .line 222
    :cond_0
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 223
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    return-object v1

    .line 225
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Byte;",
            ")",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 451
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 452
    .local v0, "answer":Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 453
    move-object v0, p2

    .line 455
    :cond_0
    return-object v0
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;)B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)B"
        }
    .end annotation

    .line 610
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 611
    .local v0, "byteObject":Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 612
    const/4 v1, 0x0

    return v1

    .line 614
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;B)B
    .locals 2
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;B)B"
        }
    .end annotation

    .line 747
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 748
    .local v0, "byteObject":Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 749
    return p2

    .line 751
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 323
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 324
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 325
    const/4 v1, 0x0

    return-object v1

    .line 327
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 328
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    return-object v1

    .line 330
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 551
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 552
    .local v0, "answer":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 553
    move-object v0, p2

    .line 555
    :cond_0
    return-object v0
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)D"
        }
    .end annotation

    .line 700
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 701
    .local v0, "doubleObject":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 702
    const-wide/16 v1, 0x0

    return-wide v1

    .line 704
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;D)D
    .locals 3
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;D)D"
        }
    .end annotation

    .line 847
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 848
    .local v0, "doubleObject":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 849
    return-wide p2

    .line 851
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 302
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 303
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x0

    return-object v1

    .line 306
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 307
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    return-object v1

    .line 309
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 531
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 532
    .local v0, "answer":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 533
    move-object v0, p2

    .line 535
    :cond_0
    return-object v0
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)F"
        }
    .end annotation

    .line 682
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 683
    .local v0, "floatObject":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 684
    const/4 v1, 0x0

    return v1

    .line 686
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;F)F
    .locals 2
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;F)F"
        }
    .end annotation

    .line 827
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 828
    .local v0, "floatObject":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 829
    return p2

    .line 831
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)I"
        }
    .end annotation

    .line 646
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 647
    .local v0, "integerObject":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 648
    const/4 v1, 0x0

    return v1

    .line 650
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;I)I"
        }
    .end annotation

    .line 787
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 788
    .local v0, "integerObject":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 789
    return p2

    .line 791
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 260
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 261
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 262
    const/4 v1, 0x0

    return-object v1

    .line 264
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 265
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 491
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 492
    .local v0, "answer":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 493
    move-object v0, p2

    .line 495
    :cond_0
    return-object v0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 281
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 282
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 283
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
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 511
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 512
    .local v0, "answer":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 513
    move-object v0, p2

    .line 515
    :cond_0
    return-object v0
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)J"
        }
    .end annotation

    .line 664
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 665
    .local v0, "longObject":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 666
    const-wide/16 v1, 0x0

    return-wide v1

    .line 668
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;J)J"
        }
    .end annotation

    .line 807
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 808
    .local v0, "longObject":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 809
    return-wide p2

    .line 811
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 345
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_0

    .line 346
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 348
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 351
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 571
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 572
    .local v0, "answer":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez v0, :cond_0

    .line 573
    move-object v0, p2

    .line 575
    :cond_0
    return-object v0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 188
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_1

    .line 189
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 191
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 192
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    return-object v1

    .line 194
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 196
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "text":Ljava/lang/String;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 198
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 204
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 431
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 432
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 433
    move-object v0, p2

    .line 435
    :cond_0
    return-object v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;TV;>;TK;)TV;"
        }
    .end annotation

    .line 113
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 369
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_0

    .line 370
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "answer":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 372
    return-object v0

    .line 375
    .end local v0    # "answer":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p2
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 239
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 240
    .local v0, "answer":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    return-object v1

    .line 243
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 244
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    return-object v1

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/Short;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Short;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 471
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 472
    .local v0, "answer":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 473
    move-object v0, p2

    .line 475
    :cond_0
    return-object v0
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)S"
        }
    .end annotation

    .line 628
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 629
    .local v0, "shortObject":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 630
    const/4 v1, 0x0

    return v1

    .line 632
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;S)S
    .locals 2
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;S)S"
        }
    .end annotation

    .line 767
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 768
    .local v0, "shortObject":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 769
    return p2

    .line 771
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "answer":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 136
    .end local v0    # "answer":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 391
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;*>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "answer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 393
    move-object v0, p2

    .line 395
    :cond_0
    return-object v0
.end method

.method public static invertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1069
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1070
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1071
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 1073
    :cond_0
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 1215
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 1228
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static iterableMap(Ljava/util/Map;)Lorg/apache/commons/collections4/IterableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1774
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p0, :cond_1

    .line 1777
    instance-of v0, p0, Lorg/apache/commons/collections4/IterableMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/IterableMap;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/MapUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/MapUtils$1;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0

    .line 1775
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterableSortedMap(Ljava/util/SortedMap;)Lorg/apache/commons/collections4/IterableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1791
    .local p0, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    if-eqz p0, :cond_1

    .line 1794
    instance-of v0, p0, Lorg/apache/commons/collections4/IterableSortedMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/IterableSortedMap;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/MapUtils$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/MapUtils$2;-><init>(Ljava/util/SortedMap;)V

    :goto_0
    return-object v0

    .line 1792
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/IterableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1374
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;->lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/LazyMap;

    move-result-object v0

    return-object v0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/IterableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1416
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "transformerFactory":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;->lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/LazyMap;

    move-result-object v0

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1640
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazySortedMap;->lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/LazySortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1682
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "transformerFactory":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazySortedMap;->lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/LazySortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;-",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1450
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;-Ljava/util/Collection<TV;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TC;>;",
            "Ljava/lang/Class<",
            "TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TC;>;"
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TC;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1492
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TC;>;"
    .local p1, "collectionFactory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<TC;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedMap(Ljava/util/Map;)Lorg/apache/commons/collections4/OrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1433
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->listOrderedMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    return-object v0
.end method

.method public static populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1698
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TV;TK;>;"
    invoke-static {}, Lorg/apache/commons/collections4/TransformerUtils;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 1699
    return-void
.end method

.method public static populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TV;>;)V"
        }
    .end annotation

    .line 1717
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;TK;>;"
    .local p3, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1718
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1720
    .local v1, "temp":Ljava/lang/Object;, "TE;"
    invoke-interface {p2, v1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    .end local v1    # "temp":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 1722
    :cond_0
    return-void
.end method

.method public static populateMap(Lorg/apache/commons/collections4/MultiMap;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1737
    .local p0, "map":Lorg/apache/commons/collections4/MultiMap;, "Lorg/apache/commons/collections4/MultiMap<TK;TV;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TV;TK;>;"
    invoke-static {}, Lorg/apache/commons/collections4/TransformerUtils;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Lorg/apache/commons/collections4/MultiMap;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 1738
    return-void
.end method

.method public static populateMap(Lorg/apache/commons/collections4/MultiMap;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TV;>;)V"
        }
    .end annotation

    .line 1756
    .local p0, "map":Lorg/apache/commons/collections4/MultiMap;, "Lorg/apache/commons/collections4/MultiMap<TK;TV;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;TK;>;"
    .local p3, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1757
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1759
    .local v1, "temp":Ljava/lang/Object;, "TE;"
    invoke-interface {p2, v1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/collections4/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    .end local v1    # "temp":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 1761
    :cond_0
    return-void
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/IterableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1295
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyPred":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TK;>;"
    .local p2, "valuePred":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TV;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;->predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/map/PredicatedMap;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1560
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyPred":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TK;>;"
    .local p2, "valuePred":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TV;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static printIndent(Ljava/io/PrintStream;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "indent"    # I

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1047
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static putAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1153
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p0, :cond_8

    .line 1156
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1159
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1160
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 1161
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v3, p1, v0

    .line 1163
    .local v3, "element":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 1164
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_1
    instance-of v2, v1, Lorg/apache/commons/collections4/KeyValue;

    if-eqz v2, :cond_2

    .line 1167
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_6

    aget-object v3, p1, v0

    .line 1169
    .restart local v3    # "element":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/collections4/KeyValue;

    .line 1170
    .local v4, "keyval":Lorg/apache/commons/collections4/KeyValue;, "Lorg/apache/commons/collections4/KeyValue<TK;TV;>;"
    invoke-interface {v4}, Lorg/apache/commons/collections4/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/commons/collections4/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "keyval":Lorg/apache/commons/collections4/KeyValue;, "Lorg/apache/commons/collections4/KeyValue<TK;TV;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1172
    :cond_2
    instance-of v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 1173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 1174
    aget-object v4, p1, v2

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 1175
    .local v4, "sub":[Ljava/lang/Object;
    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 1179
    aget-object v5, v4, v0

    aget-object v6, v4, v3

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .end local v4    # "sub":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1176
    .restart local v4    # "sub":[Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid array element: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    .end local v2    # "i":I
    .end local v4    # "sub":[Ljava/lang/Object;
    :cond_4
    goto :goto_4

    .line 1182
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_6

    .line 1184
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

    .line 1187
    .end local v4    # "i":I
    :cond_6
    :goto_4
    return-object p0

    .line 1157
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_5
    return-object p0

    .line 1154
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static safeAddToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/lang/Object;",
            ">;TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1099
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;Ljava/lang/Object;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    return-void
.end method

.method public static size(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 1804
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1258
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1523
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/ResourceBundle;)Ljava/util/Map;
    .locals 4
    .param p0, "resourceBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 892
    .local v0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 896
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 897
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 900
    :cond_0
    return-object v1
.end method

.method public static toProperties(Ljava/util/Map;)Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    .line 871
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 872
    .local v0, "answer":Ljava/util/Properties;
    if-eqz p0, :cond_0

    .line 873
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 874
    .local v2, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v3, v2

    .line 875
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 876
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 877
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .end local v2    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 880
    :cond_0
    return-object v0
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/IterableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1324
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TK;>;"
    .local p2, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TV;+TV;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedMap;->transformingMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedMap;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1589
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TK;>;"
    .local p2, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TV;+TV;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->transformingSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1273
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/map/UnmodifiableMap;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1538
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static verbosePrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "label"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 924
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections4/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V

    .line 925
    return-void
.end method

.method private static verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V
    .locals 9
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "label"    # Ljava/lang/Object;
    .param p4, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Deque<",
            "Ljava/util/Map<",
            "**>;>;Z)V"
        }
    .end annotation

    .line 976
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p3, "lineage":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/Map<**>;>;"
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 978
    const-string v0, "null"

    const-string v1, " = "

    if-nez p2, :cond_1

    .line 979
    if-eqz p1, :cond_0

    .line 980
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 981
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 983
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    return-void

    .line 986
    :cond_1
    if-eqz p1, :cond_2

    .line 987
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 988
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    :cond_2
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-static {p0, v2}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 992
    const-string v2, "{"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    invoke-interface {p3, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 996
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 997
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 998
    .local v4, "childKey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 999
    .local v5, "childValue":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_4

    invoke-interface {p3, v5}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1000
    if-nez v4, :cond_3

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    move-object v7, v5

    check-cast v7, Ljava/util/Map;

    invoke-static {p0, v6, v7, p3, p4}, Lorg/apache/commons/collections4/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V

    goto :goto_3

    .line 1007
    :cond_4
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v6

    invoke-static {p0, v6}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1008
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 1009
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1011
    nop

    .line 1013
    invoke-static {v5}, Lorg/apache/commons/collections4/PredicateUtils;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v6

    .line 1012
    invoke-static {p3, v6}, Lorg/apache/commons/collections4/IterableUtils;->indexOf(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)I

    move-result v6

    .line 1014
    .local v6, "lineageIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 1015
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_2

    .line 1016
    :cond_5
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v6, :cond_6

    .line 1017
    const-string v7, "(this Map)"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1019
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(ancestor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] Map)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1019
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1025
    :goto_2
    if-eqz p4, :cond_7

    if-eqz v5, :cond_7

    .line 1026
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(C)V

    .line 1027
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1029
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 1032
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "childKey":Ljava/lang/Object;
    .end local v5    # "childValue":Ljava/lang/Object;
    .end local v6    # "lineageIndex":I
    :goto_3
    goto/16 :goto_0

    .line 1034
    :cond_8
    invoke-interface {p3}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 1036
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1037
    if-eqz p4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, "}"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    return-void
.end method
