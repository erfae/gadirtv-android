.class public Lcom/nettv/livestore/apps/SideMenu;
.super Ljava/lang/Object;
.source "SideMenu.java"


# instance fields
.field public image_url:I

.field public menu:Ljava/lang/String;

.field public position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/apps/SideMenu;->menu:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/nettv/livestore/apps/SideMenu;->position:I

    .line 4
    iput p3, p0, Lcom/nettv/livestore/apps/SideMenu;->image_url:I

    return-void
.end method


# virtual methods
.method public getImage_url()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/apps/SideMenu;->image_url:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/apps/SideMenu;->menu:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/apps/SideMenu;->position:I

    return v0
.end method
