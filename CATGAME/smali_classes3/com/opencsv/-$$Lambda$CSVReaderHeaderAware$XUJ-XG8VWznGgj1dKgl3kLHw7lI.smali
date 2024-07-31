.class public final synthetic Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$XUJ-XG8VWznGgj1dKgl3kLHw7lI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$XUJ-XG8VWznGgj1dKgl3kLHw7lI;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$XUJ-XG8VWznGgj1dKgl3kLHw7lI;->f$0:[Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/opencsv/CSVReaderHeaderAware;->lambda$readMap$0([Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
