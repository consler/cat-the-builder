.class public final Lorg/catrobat/paintroid/model/CommandManagerModel;
.super Ljava/lang/Object;
.source "CommandManagerModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003J#\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "",
        "initialCommand",
        "Lorg/catrobat/paintroid/command/Command;",
        "commands",
        "",
        "(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)V",
        "getCommands",
        "()Ljava/util/List;",
        "getInitialCommand",
        "()Lorg/catrobat/paintroid/command/Command;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final initialCommand:Lorg/catrobat/paintroid/command/Command;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)V
    .locals 1
    .param p1, "initialCommand"    # Lorg/catrobat/paintroid/command/Command;
    .param p2, "commands"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/command/Command;",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initialCommand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commands"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    iput-object p2, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/paintroid/model/CommandManagerModel;Lorg/catrobat/paintroid/command/Command;Ljava/util/List;ILjava/lang/Object;)Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/model/CommandManagerModel;->copy(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/catrobat/paintroid/command/Command;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/command/Command;",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;)",
            "Lorg/catrobat/paintroid/model/CommandManagerModel;"
        }
    .end annotation

    const-string v0, "initialCommand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commands"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/paintroid/model/CommandManagerModel;-><init>(Lorg/catrobat/paintroid/command/Command;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/paintroid/model/CommandManagerModel;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/paintroid/model/CommandManagerModel;

    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    iget-object v1, p1, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    iget-object p1, p1, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    return-object v0
.end method

.method public final getInitialCommand()Lorg/catrobat/paintroid/command/Command;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandManagerModel(initialCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->initialCommand:Lorg/catrobat/paintroid/command/Command;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/paintroid/model/CommandManagerModel;->commands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
