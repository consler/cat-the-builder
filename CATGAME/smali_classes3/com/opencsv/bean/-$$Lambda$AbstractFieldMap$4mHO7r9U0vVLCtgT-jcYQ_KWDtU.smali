.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$4mHO7r9U0vVLCtgT-jcYQ_KWDtU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$4mHO7r9U0vVLCtgT-jcYQ_KWDtU;->f$0:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$4mHO7r9U0vVLCtgT-jcYQ_KWDtU;->f$0:Ljava/lang/Comparable;

    check-cast p1, Lcom/opencsv/bean/ComplexFieldMapEntry;

    invoke-static {v0, p1}, Lcom/opencsv/bean/AbstractFieldMap;->lambda$get$0(Ljava/lang/Comparable;Lcom/opencsv/bean/ComplexFieldMapEntry;)Z

    move-result p1

    return p1
.end method
