.class public Lcom/magoware/magoware/webtv/util/MagowareCacheKey$HeaderKeys;
.super Ljava/lang/Object;
.source "MagowareCacheKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/MagowareCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderKeys"
.end annotation


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "api_version"

.field public static final APP_VERSION:Ljava/lang/String; = "appversion"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final COMPANY_ID:Ljava/lang/String; = "company_id"

.field public static final KEY_AUTH:Ljava/lang/String; = "auth"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/MagowareCacheKey;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/MagowareCacheKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey$HeaderKeys;->this$0:Lcom/magoware/magoware/webtv/util/MagowareCacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
