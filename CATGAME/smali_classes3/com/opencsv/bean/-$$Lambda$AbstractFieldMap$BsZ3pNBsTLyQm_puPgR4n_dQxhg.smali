.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$BsZ3pNBsTLyQm_puPgR4n_dQxhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$BsZ3pNBsTLyQm_puPgR4n_dQxhg;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$BsZ3pNBsTLyQm_puPgR4n_dQxhg;->f$0:Ljava/util/List;

    check-cast p1, Lcom/opencsv/bean/ComplexFieldMapEntry;

    invoke-static {v0, p1}, Lcom/opencsv/bean/AbstractFieldMap;->lambda$values$1(Ljava/util/List;Lcom/opencsv/bean/ComplexFieldMapEntry;)V

    return-void
.end method
