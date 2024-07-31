.class public Lcom/huawei/hianalytics/ab/cd/ab/ab;
.super Ljava/lang/Object;


# instance fields
.field private ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

.field private bc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/cd/ab/ab;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    iput-object p2, p0, Lcom/huawei/hianalytics/ab/cd/ab/ab;->bc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ab()Lcom/huawei/hianalytics/ab/cd/ab/bc;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/ab/ab;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    return-object v0
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/ab/ab;->bc:Ljava/lang/String;

    return-object v0
.end method
