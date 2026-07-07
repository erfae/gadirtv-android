.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/OsdBox;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    iput p2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;->f$1:I

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;->f$1:I

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->lambda$saveFavorite$10$OsdBox(ILcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
