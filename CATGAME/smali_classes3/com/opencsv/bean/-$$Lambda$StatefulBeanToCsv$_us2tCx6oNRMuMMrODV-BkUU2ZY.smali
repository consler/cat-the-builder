.class public final synthetic Lcom/opencsv/bean/-$$Lambda$StatefulBeanToCsv$_us2tCx6oNRMuMMrODV-BkUU2ZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/StatefulBeanToCsv;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/StatefulBeanToCsv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$StatefulBeanToCsv$_us2tCx6oNRMuMMrODV-BkUU2ZY;->f$0:Lcom/opencsv/bean/StatefulBeanToCsv;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$StatefulBeanToCsv$_us2tCx6oNRMuMMrODV-BkUU2ZY;->f$0:Lcom/opencsv/bean/StatefulBeanToCsv;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->lambda$write$0$StatefulBeanToCsv([Ljava/lang/String;)V

    return-void
.end method
