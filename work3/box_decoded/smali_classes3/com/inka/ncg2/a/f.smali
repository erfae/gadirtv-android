.class public Lcom/inka/ncg2/a/f;
.super Lcom/inka/ncg2/a/g;
.source "SourceFile"


# static fields
.field private static b:Lcom/inka/ncg2/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/inka/ncg2/a/g;-><init>()V

    return-void
.end method

.method public static h()Lcom/inka/ncg2/a/f;
    .locals 1

    .line 7
    sget-object v0, Lcom/inka/ncg2/a/f;->b:Lcom/inka/ncg2/a/f;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/inka/ncg2/a/f;

    invoke-direct {v0}, Lcom/inka/ncg2/a/f;-><init>()V

    sput-object v0, Lcom/inka/ncg2/a/f;->b:Lcom/inka/ncg2/a/f;

    .line 10
    :cond_0
    sget-object v0, Lcom/inka/ncg2/a/f;->b:Lcom/inka/ncg2/a/f;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/inka/ncg2/a/d;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/inka/ncg2/a/g;->a(Lcom/inka/ncg2/a/d;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;)Z
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/inka/ncg2/a/g;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/inka/ncg2/a/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d()Z
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/inka/ncg2/a/g;->d()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/inka/ncg2/a/g;->e()V

    return-void
.end method

.method public bridge synthetic i()Z
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/inka/ncg2/a/g;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/inka/ncg2/a/g;->j()V

    return-void
.end method
