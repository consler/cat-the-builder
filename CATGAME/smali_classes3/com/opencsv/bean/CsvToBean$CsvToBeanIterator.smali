.class Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;
.super Ljava/lang/Object;
.source "CsvToBean.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/bean/CsvToBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsvToBeanIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/opencsv/bean/CsvToBean;

.field private thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/opencsv/bean/CsvToBean;)V
    .locals 1

    .line 303
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    .line 305
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 306
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->readSingleLine()V

    .line 307
    return-void
.end method

.method private processException()V
    .locals 3

    .line 311
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    .line 312
    .local v0, "o":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$000(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    return-void
.end method

.method private readLineWithPossibleError()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 319
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$200(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/CSVReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/opencsv/bean/CsvToBean;->access$102(Lcom/opencsv/bean/CsvToBean;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$200(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/CSVReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opencsv/CSVReader;->getLinesRead()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/opencsv/bean/CsvToBean;->access$302(Lcom/opencsv/bean/CsvToBean;J)J

    .line 323
    new-instance v1, Lcom/opencsv/bean/concurrent/ProcessCsvLine;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    .line 324
    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$300(Lcom/opencsv/bean/CsvToBean;)J

    move-result-wide v5

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$400(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/MappingStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$500(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/CsvToBeanFilter;

    move-result-object v8

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$600(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;

    move-result-object v9

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    .line 325
    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$100(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v12, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    .line 326
    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$700(Lcom/opencsv/bean/CsvToBean;)Z

    move-result v13

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;-><init>(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;Ljava/util/List;[Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    .line 327
    .local v1, "proc":Lcom/opencsv/bean/concurrent/ProcessCsvLine;, "Lcom/opencsv/bean/concurrent/ProcessCsvLine<TT;>;"
    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->run()V

    .line 329
    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->processException()V

    goto :goto_2

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/concurrent/OrderedObject;

    .line 336
    .local v2, "o":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<TT;>;"
    if-nez v2, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    .line 338
    .end local v1    # "proc":Lcom/opencsv/bean/concurrent/ProcessCsvLine;, "Lcom/opencsv/bean/concurrent/ProcessCsvLine<TT;>;"
    .end local v2    # "o":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<TT;>;"
    :goto_2
    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$100(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 341
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    .line 343
    :cond_3
    return-void
.end method

.method private readSingleLine()V
    .locals 7

    .line 347
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    :try_start_0
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->readLineWithPossibleError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    nop

    .line 353
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/opencsv/bean/CsvToBean;->access$102(Lcom/opencsv/bean/CsvToBean;[Ljava/lang/String;)[Ljava/lang/String;

    .line 350
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$800(Lcom/opencsv/bean/CsvToBean;)Ljava/util/Locale;

    move-result-object v2

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "parsing.error"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    .line 351
    invoke-static {v5}, Lcom/opencsv/bean/CsvToBean;->access$300(Lcom/opencsv/bean/CsvToBean;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v5}, Lcom/opencsv/bean/CsvToBean;->access$100(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 350
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 357
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    .line 366
    .local v0, "intermediateBean":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->readSingleLine()V

    .line 367
    return-object v0

    .line 363
    .end local v0    # "intermediateBean":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 372
    .local p0, "this":Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;, "Lcom/opencsv/bean/CsvToBean<TT;>.CsvToBeanIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    .line 373
    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$800(Lcom/opencsv/bean/CsvToBean;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 374
    const-string v2, "read.only.iterator"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
