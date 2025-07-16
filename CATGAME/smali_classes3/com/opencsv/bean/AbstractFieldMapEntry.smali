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
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->field:Lcom/opencsv/bean/BeanField;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->errorLocale:Ljava/util/Locale;

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
    iget-object v0, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->field:Lcom/opencsv/bean/BeanField;

    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractFieldMapEntry;->errorLocale:Ljava/util/Locale;

    return-void
.end method
