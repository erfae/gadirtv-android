.class public Lcom/nettv/livestore/activities/SeriesInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SeriesInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public btn_favorite:Landroid/widget/RelativeLayout;

.field public btn_play:Landroid/widget/RelativeLayout;

.field public btn_trailer:Landroid/widget/RelativeLayout;

.field public currentSeries:Lcom/nettv/livestore/models/SeriesModel;

.field public image_fav:Landroid/widget/ImageView;

.field public is_fav:Z

.field public movie_logo:Landroid/widget/ImageView;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

.field public series_background:Ljava/lang/String;

.field public series_bg:Landroid/widget/ImageView;

.field public str_added:Landroid/widget/TextView;

.field public str_cast:Landroid/widget/TextView;

.field public stream_id:Ljava/lang/String;

.field public txt_added:Landroid/widget/TextView;

.field public txt_cast:Landroid/widget/TextView;

.field public txt_description:Landroid/widget/TextView;

.field public txt_duration:Landroid/widget/TextView;

.field public txt_genre:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_play:Landroid/widget/TextView;

.field public txt_rating:Landroid/widget/TextView;

.field public txt_trailer:Landroid/widget/TextView;

.field public txt_year:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$91-_yR7aXfcUbPR_Z3aRpHeohYM(Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->lambda$getSeriesInfo$1(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kp8vnWmBwkVPD69qNXSAHeFUPOc(Lcom/nettv/livestore/activities/SeriesInfoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->lambda$getSeriesInfo$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L95vSaUJOyt6-1FvyzN7QpeHh2M(Lcom/nettv/livestore/activities/SeriesInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->lambda$onClick$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0fXvlYJrLc9FrohcCKfKEmPj24(Lcom/nettv/livestore/activities/SeriesInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->lambda$onClick$3()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->stream_id:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->is_fav:Z

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_background:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private getSeriesInfo()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/player_api.php?action=get_series_info&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&series_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/nettv/livestore/activities/SeriesInfoActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/SeriesInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeriesInfoActivity;I)V

    sget-object v5, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$18:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4, v1, v3, v5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private goToSeason()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/SeasonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "series_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "series_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_background:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_background:Ljava/lang/String;

    const-string v2, "image_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0b032e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_bg:Landroid/widget/ImageView;

    const v0, 0x7f0b01dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->movie_logo:Landroid/widget/ImageView;

    const v0, 0x7f0b01d6

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f0b03e4

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b0405

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_year:Landroid/widget/TextView;

    const v0, 0x7f0b03f0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_rating:Landroid/widget/TextView;

    const v0, 0x7f0b03cd

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_duration:Landroid/widget/TextView;

    const v0, 0x7f0b03ba

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_added:Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b03ea

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_play:Landroid/widget/TextView;

    const v0, 0x7f0b03ff

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_trailer:Landroid/widget/TextView;

    const v0, 0x7f0b0098

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b008d

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00a3

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0088

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02e6

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const v0, 0x7f0b03d5

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_genre:Landroid/widget/TextView;

    const v0, 0x7f0b0358

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->str_cast:Landroid/widget/TextView;

    const v0, 0x7f0b03be

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_cast:Landroid/widget/TextView;

    const v0, 0x7f0b0356

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->str_added:Landroid/widget/TextView;

    const v0, 0x7f0b02e2

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_play:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getWatch_season()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_trailer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getTrailer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->str_cast:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->str_added:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getDate_added()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$getSeriesInfo$0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "backdrop_path"

    const-string v1, "info"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_background:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_background:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_bg:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->series_background:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic lambda$getSeriesInfo$1(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onClick$2()V
    .locals 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getFavSeriesNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSeriesFavNames(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onClick$3()V
    .locals 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getFavSeriesNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSeriesFavNames(Ljava/util/List;)V

    return-void
.end method

.method private setSeriesInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getPlot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_genre:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_cast:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getCast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_rating:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getRating()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getRating()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_rating:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->ratingBar:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V

    :goto_0
    return-void
.end method

.method private watchYoutubeVideo(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getYoutubePackageInfo(Landroid/content/Context;)Lcom/nettv/livestore/utils/Utils$YoutubePackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    iget-object p1, v0, Lcom/nettv/livestore/utils/Utils$YoutubePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "Please install youtube App."

    .line 7
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.youtube:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x10808000

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 12
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getYoutube()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->watchYoutubeVideo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 6
    :sswitch_1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->goToSeason()V

    goto :goto_1

    .line 7
    :sswitch_2
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->is_fav:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 8
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->is_fav:Z

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v2, 0x7f08013e

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 11
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nettv/livestore/activities/SeriesInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/nettv/livestore/activities/SeriesInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeriesInfoActivity;I)V

    invoke-virtual {p1, v2, v0, v3}, Lcom/nettv/livestore/helper/RealmController;->addToFavSeries(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_1

    .line 12
    :cond_2
    iput-boolean v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->is_fav:Z

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0602f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 15
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nettv/livestore/activities/SeriesInfoActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/SeriesInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/SeriesInfoActivity;I)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/nettv/livestore/helper/RealmController;->addToFavSeries(Ljava/lang/String;ZLcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_1

    .line 16
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0088 -> :sswitch_3
        0x7f0b008d -> :sswitch_2
        0x7f0b0098 -> :sswitch_1
        0x7f0b00a3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0031

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->initView()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "series_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->stream_id:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    const-string v0, "name"

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesByName(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesByName(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getSeriesById(Ljava/lang/String;)Lcom/nettv/livestore/models/SeriesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->stream_id:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->isIs_favorite()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->is_fav:Z

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v1, 0x7f08013f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 19
    :cond_2
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->is_fav:Z

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    const v1, 0x7f08013e

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_year:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    const-string v4, "yyyy"

    invoke-static {v3, v4, v2}, Lcom/nettv/livestore/utils/Utils;->formateDateFromstring(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    const-string v2, ", "

    .line 24
    invoke-static {v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_added:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getLast_modified()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/nettv/livestore/utils/Utils;->getDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 27
    :catch_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_added:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/SeriesModel;->getLast_modified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->txt_duration:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800aa

    .line 29
    :try_start_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    .line 30
    invoke-virtual {v2}, Lcom/nettv/livestore/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->movie_logo:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 33
    :catch_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->movie_logo:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 37
    :goto_4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->setSeriesInfo()V

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-nez p1, :cond_4

    .line 39
    invoke-direct {p0}, Lcom/nettv/livestore/activities/SeriesInfoActivity;->getSeriesInfo()V

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->currentSeries:Lcom/nettv/livestore/models/SeriesModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->getYoutube()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 41
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 42
    :cond_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_trailer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b008d

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 44
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_favorite:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0098

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 45
    :goto_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 46
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesInfoActivity;->btn_play:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
