.class Lcom/inka/ncg2/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/a/g$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/a/g;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/inka/ncg2/a/g$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inka/ncg2/a/g;[Ljava/lang/String;)V
    .locals 4

    .line 24
    iput-object p1, p0, Lcom/inka/ncg2/a/g$a;->a:Lcom/inka/ncg2/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inka/ncg2/a/g$a;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 26
    aget-object v1, p2, v0

    const-string v2, "logFilter:"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    new-instance v2, Lcom/inka/ncg2/a/g$a$a;

    invoke-direct {v2, p0}, Lcom/inka/ncg2/a/g$a$a;-><init>(Lcom/inka/ncg2/a/g$a;)V

    .line 37
    aget-object v3, v1, p1

    iput-object v3, v2, Lcom/inka/ncg2/a/g$a$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    .line 38
    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/inka/ncg2/a/g$a$a;->d:I

    const/4 v3, 0x2

    .line 39
    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/inka/ncg2/a/g$a$a;->b:Ljava/lang/String;

    const/4 v3, 0x3

    .line 40
    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/inka/ncg2/a/g$a$a;->c:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/inka/ncg2/a/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/inka/ncg2/a/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inka/ncg2/a/g$a$a;

    .line 49
    iget-object v2, v2, Lcom/inka/ncg2/a/g$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "*:S"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/inka/ncg2/a/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 63
    iget-object v2, p0, Lcom/inka/ncg2/a/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inka/ncg2/a/g$a$a;

    if-eqz p2, :cond_0

    .line 66
    iget-object v3, v2, Lcom/inka/ncg2/a/g$a$a;->b:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_0
    iget-object v3, v2, Lcom/inka/ncg2/a/g$a$a;->c:Ljava/lang/String;

    .line 71
    :goto_1
    iget v2, v2, Lcom/inka/ncg2/a/g$a$a;->d:I

    const/16 v4, 0x63

    if-eq v2, v4, :cond_4

    const/16 v4, 0x65

    if-eq v2, v4, :cond_3

    const/16 v4, 0x73

    if-eq v2, v4, :cond_2

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 93
    iget-object p2, p0, Lcom/inka/ncg2/a/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inka/ncg2/a/g$a$a;

    .line 94
    iget-object v0, p0, Lcom/inka/ncg2/a/g$a;->a:Lcom/inka/ncg2/a/g;

    iget-object p2, p2, Lcom/inka/ncg2/a/g$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/inka/ncg2/a/g;->a(Lcom/inka/ncg2/a/g;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_7
    return v2
.end method
