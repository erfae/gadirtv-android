.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$CastAdapter$OgIuiZ6XTFLlJx_bK6Nt5cuoRY4;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/CastAdapter;->lambda$onBindViewHolder$0$CastAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;Landroid/view/View;)V

    return-void
.end method
