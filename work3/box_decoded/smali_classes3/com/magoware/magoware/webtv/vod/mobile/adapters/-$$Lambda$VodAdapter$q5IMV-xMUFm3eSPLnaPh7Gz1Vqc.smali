.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;

.field public final synthetic f$2:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;->f$1:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;->f$2:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;->f$1:Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;->f$2:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->lambda$onBindViewHolder$0$VodAdapter(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V

    return-void
.end method
