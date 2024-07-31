.class public Lcom/opencsv/bean/BeanFieldJoinStringIndex;
.super Lcom/opencsv/bean/BeanFieldJoin;
.source "BeanFieldJoinStringIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/BeanFieldJoin<",
        "TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "required"    # Z
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "converter"    # Lcom/opencsv/bean/CsvConverter;
    .param p7, "capture"    # Ljava/lang/String;
    .param p8, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/Locale;",
            "Lcom/opencsv/bean/CsvConverter;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/collections4/MultiValuedMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/opencsv/bean/BeanFieldJoinStringIndex;, "Lcom/opencsv/bean/BeanFieldJoinStringIndex<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    invoke-direct/range {p0 .. p8}, Lcom/opencsv/bean/BeanFieldJoin;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected putNewValue(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "index"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/opencsv/bean/BeanFieldJoinStringIndex;, "Lcom/opencsv/bean/BeanFieldJoinStringIndex<TT;>;"
    .local p1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
