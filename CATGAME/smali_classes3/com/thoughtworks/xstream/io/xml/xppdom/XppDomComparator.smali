.class public Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;
.super Ljava/lang/Object;
.source "XppDomComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final xpath:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;-><init>(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadLocal;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 64
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x5d

    if-ltz v3, :cond_0

    const/16 v7, 0x5b

    .line 69
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v6, :cond_1

    const/16 v0, 0x3f

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v6

    .line 78
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v6

    .line 80
    array-length v7, v3

    .line 81
    array-length v8, v6

    sub-int/2addr v8, v7

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v8, :cond_3

    const-string v0, "::count(@*)"

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v8, :cond_2

    move v9, v10

    :cond_2
    return v9

    .line 88
    :cond_3
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 89
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v8, 0x0

    move v11, v8

    :goto_0
    if-ge v11, v7, :cond_6

    .line 91
    aget-object v12, v3, v11

    .line 92
    aget-object v13, v6, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    const-string v14, "[@"

    if-eqz v13, :cond_4

    .line 94
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v13

    .line 99
    :cond_4
    invoke-virtual {v0, v12}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_5

    .line 101
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v13

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 107
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v3

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-eqz v5, :cond_8

    const-string v0, "::count(*)"

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v5, :cond_7

    move v9, v10

    :cond_7
    return v9

    :cond_8
    const-string v6, "::text()"

    if-lez v3, :cond_d

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    const/16 v6, 0x2f

    .line 122
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v7, v8

    :goto_1
    if-ge v7, v3, :cond_b

    .line 126
    invoke-virtual {v0, v7}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v5

    .line 127
    invoke-virtual {v1, v7}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v9

    .line 128
    invoke-virtual {v5}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v11

    .line 129
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    new-array v12, v10, [I

    .line 130
    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_9
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    check-cast v11, [I

    aget v12, v11, v8

    add-int/lit8 v13, v12, 0x1

    aput v13, v11, v8

    move-object/from16 v11, p0

    invoke-direct {v11, v5, v9, v2, v12}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v5

    if-eqz v5, :cond_a

    return v5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_b
    move-object/from16 v11, p0

    goto :goto_4

    :cond_c
    move-object/from16 v11, p0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "XppDom cannot handle mixed mode at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v11, p0

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    if-nez v1, :cond_e

    move v9, v8

    :cond_e
    move v5, v9

    goto :goto_3

    :cond_f
    if-nez v1, :cond_10

    goto :goto_2

    .line 144
    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    :goto_2
    move v5, v10

    :goto_3
    if-eqz v5, :cond_11

    .line 148
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v5

    .line 154
    :cond_11
    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    return v5
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    check-cast p1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast p2, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result p1

    .line 51
    iget-object p2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return p1
.end method
