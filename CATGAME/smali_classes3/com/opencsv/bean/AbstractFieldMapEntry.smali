.class public abstract Lcom/opencsv/bean/AbstractFieldMapEntry;
.super Ljava/lang/Object;
.source "AbstractFieldMapEntry.java"

# interfaces
.implements Lcom/opencsv/bean/ComplexFieldMapEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "K::",
        "Ljava/lang/Comparable<",
        "TK;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/opencsv/bean/ComplexFieldMapEntry<",
        "TI;TK;TT;>;"
    }
.end annotation


# instance fields
.field protected errorLocale:Ljava/util/Locale;

.field protected final field:Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V
    .locals 1
    .param p2, "errorLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMapEntry;, "Lcom/opencsv/bean/AbstractFieldMapEntry<TI;TK;TT;>;"
    .local p1, "field":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->field:Lcom/opencsv/bean/BeanField;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->errorLocale:Ljava/util/Locale;

    .line 48
    return-void
.end method


# virtual methods
.method public getBeanField()Lcom/opencsv/bean/BeanField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMapEntry;, "Lcom/opencsv/bean/AbstractFieldMapEntry<TI;TK;TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->field:Lcom/opencsv/bean/BeanField;

    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 57
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMapEntry;, "Lcom/opencsv/bean/AbstractFieldMapEntry<TI;TK;TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->errorLocale:Ljava/util/Locale;

    .line 58
    return-void
.end method
