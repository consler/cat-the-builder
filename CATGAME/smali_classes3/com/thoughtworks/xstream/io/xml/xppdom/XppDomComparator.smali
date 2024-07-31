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

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;-><init>(Ljava/lang/ThreadLocal;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadLocal;)V
    .locals 0
    .param p1, "xpath"    # Ljava/lang/ThreadLocal;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    .line 45
    return-void
.end method

.method private compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I
    .locals 18
    .param p1, "dom1"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .param p2, "dom2"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .param p3, "xpath"    # Ljava/lang/StringBuffer;
    .param p4, "count"    # I

    .line 64
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 65
    .local v3, "pathlen":I
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 67
    .local v5, "s":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const/16 v6, 0x5d

    if-ltz p4, :cond_0

    .line 69
    const/16 v7, 0x5b

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    :cond_0
    if-eqz v5, :cond_1

    .line 73
    const/16 v6, 0x3f

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    return v5

    .line 78
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "attributes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "attributes2":[Ljava/lang/String;
    array-length v9, v7

    .line 81
    .local v9, "len":I
    array-length v10, v8

    sub-int/2addr v10, v9

    .line 82
    .end local v5    # "s":I
    .local v10, "s":I
    const/4 v11, 0x1

    if-eqz v10, :cond_3

    .line 83
    const-string v6, "::count(@*)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    if-gez v10, :cond_2

    move v5, v11

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :goto_0
    return v5

    .line 88
    :cond_3
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 89
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 90
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_6

    .line 91
    aget-object v13, v7, v12

    .line 92
    .local v13, "attribute":Ljava/lang/String;
    aget-object v14, v8, v12

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    .line 93
    const-string v14, "[@"

    if-eqz v10, :cond_4

    .line 94
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "?]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    return v10

    .line 99
    :cond_4
    invoke-virtual {v0, v13}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v13}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    .line 100
    if-eqz v10, :cond_5

    .line 101
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    return v10

    .line 90
    .end local v13    # "attribute":Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 107
    .end local v12    # "i":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v5

    .line 108
    .local v5, "children":I
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v5

    .line 109
    .end local v10    # "s":I
    .local v6, "s":I
    if-eqz v6, :cond_8

    .line 110
    const-string v10, "::count(*)"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    if-gez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v11, -0x1

    :goto_2
    return v11

    .line 115
    :cond_8
    const-string v12, "::text()"

    if-lez v5, :cond_d

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_c

    .line 122
    const/16 v12, 0x2f

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v12, "names":Ljava/util/Map;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v5, :cond_b

    .line 126
    invoke-virtual {v0, v13}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v14

    .line 127
    .local v14, "child1":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-virtual {v1, v13}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v15

    .line 128
    .local v15, "child2":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-virtual {v14}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "child":Ljava/lang/String;
    invoke-interface {v12, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 130
    new-array v0, v11, [I

    invoke-interface {v12, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_9
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/16 v17, 0x0

    aget v11, v0, v17

    add-int/lit8 v16, v11, 0x1

    aput v16, v0, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v2, v11}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v6

    .line 134
    if-eqz v6, :cond_a

    .line 135
    return v6

    .line 125
    .end local v10    # "child":Ljava/lang/String;
    .end local v14    # "child1":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .end local v15    # "child2":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    const/4 v11, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    .line 138
    .end local v12    # "names":Ljava/util/Map;
    .end local v13    # "i":I
    goto :goto_7

    .line 116
    :cond_c
    move-object/from16 v0, p0

    .line 117
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "XppDom cannot handle mixed mode at "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 139
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, "value2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "value1":Ljava/lang/String;
    if-nez v11, :cond_f

    .line 142
    if-nez v10, :cond_e

    move/from16 v16, v17

    goto :goto_4

    :cond_e
    const/16 v16, -0x1

    :goto_4
    move/from16 v6, v16

    goto :goto_6

    .line 144
    :cond_f
    if-nez v10, :cond_10

    const/4 v13, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v11, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    :goto_5
    move v6, v13

    .line 147
    :goto_6
    if-eqz v6, :cond_11

    .line 148
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    return v6

    .line 154
    .end local v10    # "value2":Ljava/lang/String;
    .end local v11    # "value1":Ljava/lang/String;
    :cond_11
    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 156
    return v6
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "dom1"    # Ljava/lang/Object;
    .param p2, "dom2"    # Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "xpath":Ljava/lang/StringBuffer;
    move-object v1, p1

    check-cast v1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-object v2, p2

    check-cast v2, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v1

    .line 51
    .local v1, "s":I
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    if-eqz v2, :cond_1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 59
    :cond_1
    :goto_0
    return v1
.end method
