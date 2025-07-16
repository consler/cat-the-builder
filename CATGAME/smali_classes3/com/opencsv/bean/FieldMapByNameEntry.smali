.class public Lcom/opencsv/bean/FieldMapByNameEntry;
.super Ljava/lang/Object;
.source "FieldMapByNameEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final field:Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final regexPattern:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByNameEntry;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/opencsv/bean/FieldMapByNameEntry;->field:Lcom/opencsv/bean/BeanField;

    .line 54
    iput-boolean p3, p0, Lcom/opencsv/bean/FieldMapByNameEntry;->regexPattern:Z

    return-void
.end method


# virtual methods
.method public getField()Lcom/opencsv/bean/BeanField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByNameEntry;->field:Lcom/opencsv/bean/BeanField;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByNameEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isRegexPattern()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/opencsv/bean/FieldMapByNameEntry;->regexPattern:Z

    return v0
.end method
